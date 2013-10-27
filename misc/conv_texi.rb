class MethodType

  class Args
    attr_accessor :type, :name, :default

    def initialize(type,name,default=nil)
      @type = Args.conv_type(type)
      @name = name.downcase
      @default = default
    end

    def default_s
      if default and !default.empty?
        "default=#{default}"
      else
        ""
      end
    end

    def var
      if default and !default.empty?
        "#{name}=#{default}"
      else
        "#{name}"
      end
    end

    def self.conv_type(s)
      s = s.gsub(/\b(const|inline)\b/,"")
      s = s.gsub(/(\*|&)/,"")
      s.strip!
      case s
      when /mglData.\b/
        "MglData"
      when /mgl(\w+)\b/
        "Mgl"+$1
      when "int"
        "Integer"
      when "void"
        "nil"
      when "double","mreal"
        "Float"
      when "char"
        "String"
      else
        s
      end
    end

    def conv_type_bak(s)
      s = conv_type2(s)
      case s
      when "MglPoint"
        "MglPoint,Array"
      else
        s
      end
    end
  end

  def initialize(clss,line)
    @args = []
    @docs = []
    @clss = fix_class_name(clss) if clss
    parse(line)
    if @clss.nil?
      a = @args.shift
      @clss = @return_type = a.type
    end
  end

  attr_accessor :name, :return_type, :doc, :clss

  def add_doc(s)
    @docs << s
  end

  def args(n)
    a = @args[n]
    if a.nil?
      @args[n] = a = Args.new
    end
    a
  end

  def vars
    @args.map{|a| a.var}
  end

  def mkdoc
    d = []
    @docs.each do |s|
      d << s
    end
    d << "# @overload #{name}(#{vars.join(',')})"
    @args.each do |a|
      d << "#  @param [#{a.type}] #{a.name} #{a.default_s}"
    end
    d << "#  @return [#{return_type}]"
    d.join("\n")+"\n"
  end

  def fix_return_type(s)
    Args.conv_type(s.gsub(/\{([^{}]+)\}/,'\1'))
  end


  def parse(line)
    #p line
    #if line.nil?
    if /(.*)\((.*)\)/ =~ line.strip
      m,parms = $1,$2
      if /(\S.*[\s*&])(\w+\S+)/ =~ m
        ret, meth = $1,$2
      else
        ret = m
        meth = "unknown_method"
      end
      if ret.strip == "{}"
        @name = "initialize"
        @return_type = fix_return_type(@clss)
      else
        @name = fix_method_name(meth)
        @return_type = fix_return_type(ret)
      end
      decomp_parms(parms)
    else
      "# parse_param_error: "+line
    end
  end

  def decomp_parms(parms)
    parms.split(/,/).each_with_index do |x,i|
      if /(\S.*[\s*&])(\w+)(=([^=]+))?/ =~ x
        @args[i] = Args.new($1,$2,$4)
      else
        @args[i] = Args.new("unknown","error")
      end
    end
  end

  def fix_method_name(x)
    x = x.sub(/^operator(\S+)/,'\1')
    x = x.gsub(/(?<=[a-z])(?=[A-Z])/,"_").downcase
    x.gsub!(/(?<=[a-z])(?=[0-9]+[a-z])/i,"_")
    x
  end

  def fix_class_name(x)
    x = $1 if /(\w+)/=~x
    x[0] = x[0].upcase
    x
  end

  def valid
    @name !~ /=$/ and
      @name != "!" and
      @name != "unknown_method" and
      @clss =~ /^mgl/i and
      @return_type !~ /\b(HMGL|HCDT|HMPR)\b/ and
      @args.all? do |a|
      /\b(HMGL|HCDT|HMPR)\b/ !~ a.type
    end
  end

  def ruby_def
    "def #{name}\nend\n"
  end
end

class TexiParse

  def initialize
  end

  def parse(src_str)
    @re_ignore_param = /\b(HMGL|HCDT|HMPR)\b/
    @tags = {}
    @defs = []
    @docs = {}
    @block_nest = []
    @s = src_str
    @a = @s.scan(/^.*$/).map{|x| x}
    tags = {}
    @a.each{|x| tags[$1]=true if /^@end (\w+)/=~x}

    tags = tags.keys
    @re_tag = /^@(#{tags.join('|')})\b\s*(.*)/

    block_loop()
  end

  def empty?
    @docs.empty?
  end

  def write(io)
    @docs.each do |clss,docs|
      if clss
        io.print "class #{clss}\n\n"
        docs.each do |x|
          io.print x+"\n\n"
        end
        io.print "end # #{clss}\n\n"
      end
    end
  end

  def c(a)
    ""
  end

  def block_loop(tag="_top_",arg=nil)
    b = []
    @block_nest.push([])
    while !@a.empty?
      a0 = @a.shift
      #puts a0
      case a0
      when @re_tag
        tag2,arg2 = $1,$2
        if respond_to?(tag2)
          send(tag2,arg2)
        else
          block_loop(tag2,arg2)
        end
      when /^@end #{tag}\b/
        break
      else
        parse_line(a0)
        b.push(a0)
      end
    end
    @block_nest.pop
  end

  def default_tag(tag,arg)
    tag = "section" if tag == "subsection"
    @tags[tag] = arg
    "#{tag}:#{arg}"
    nil
  end

  def parse_tag(tag,arg)
    if respond_to?(tag)
      send(tag,arg)
    else
      default_tag(tag,arg)
    end
  end

  def parse_inline(a)
    a = a.gsub(/@(\w+)\{([^}]*)\}/){|x| parse_tag($1,$2)}
    a.gsub!(/@\{/,"(")
    a.gsub!(/@\}/,")")
    a
  end

  def parse_line(a)
    case a
    when /^@(\w+)(.*)/
      tag,arg = $1,$2
      line = parse_tag(tag,parse_inline(arg))
    else
      line = parse_inline(a)
    end
    if line
      @block_nest.last.push(line)
    end
  end

  def ifclear(arg)
    if !@defs.include?(arg)
      block_loop("ifclear",arg)
    end
  end

  def ifset(arg)
    if @defs.include?(arg)
      block_loop("ifclear",arg)
    end
  end

  def deftypemethod(arg)
    deftype(:deftypemethod,arg)
  end

  def deftypefn(arg)
    deftype(:deftypefn,arg)
  end

  def deftype(tag,arg)
    #p arg
    @method = []
    deftypefnx(parse_inline(arg))
    lines = block_loop(tag,arg)
    s = ""
    section = @tags['section'].strip
    if /^mgl.*class$/ !~ section
      s << "# #{section}.\n"
    end
    lines.each do |x|
      s << "# #{x}\n"
    end
    mm = nil
    @method.each do |m|
      if m and m.valid
        s << m.mkdoc
        mm = m
      end
    end
    if mm and mm.valid
      s << mm.ruby_def
      #puts s
      clss = mm.clss
      b = @docs[clss]
      @docs[clss] = b = [] unless b
      b.push s
    elsif mm
      puts "undoc: "+mm.name
    end
    nil
  end

  def deftypefnx(a)
    return if /wchar_t/ =~ a
    a = parse_inline(a)
    a = a.strip
    #puts "- deftypefnx #{a}"
    if /\{(\w+) on ([^}]+)\}(.*)/ =~ a
      type,clss,args = $1,$2,$3
      case type
      when "Method"
        @method << MethodType.new(clss,args)
        #a = [type,clss,*parse_param(args)]
        #a[4].unshift "# @overload #{a[2]}(#{a[3].join(',')})"
        #if a[4].all?{|x| @re_ignore_param !~ x}
        #  @method << a
        #end
      when "Constructor"
        @method << MethodType.new(clss,args)
        #a = [type,clss,*parse_param(args)]
        #a[4].unshift "# @overload initialize(#{a[3].join(',')})"
        #if a[4].all?{|x| @re_ignore_param !~ x}
        #  @method << a
        #end
      when "Destructor"
      when "Slot"
      when "Signal"
      else
        raise "unknown method type : #{type}"
      end
    elsif /\{Library Function\}(.*)/ =~ a
      clss,args = nil,$1
      @method << MethodType.new(clss,args)
      #a = library_function($1)
      #if a and a[4].all?{|x| @re_ignore_param !~ x}
      #  @method << a
      #end
    elsif /^(mgl\w+) (.*)/ =~ a
      clss,args = $1,$2
      #p [clss,args]
      m = MethodType.new(clss,args)
      #p m
      #p m.mkdoc
      @method << m
      #a = ["Method",clss,*library_method(args)]
      #if a and a[4].all?{|x| @re_ignore_param !~ x}
      #  @method << a
      #end
    elsif /\{MGL command\}/ =~ a
    elsif /\{C function\}/ =~ a
    elsif /\{Global function\}/ =~ a
    elsif /\{MGL suffix\}/ =~ a
    elsif /QMathGL/ =~ a
    elsif /Fl_MathGL/ =~ a
    else
      puts "undoc: "+a
    end
    nil
  end


  def code(s)
    s
  end

  def var(s)
    s
  end

  def emph(x)
    "*"+x+"*"
  end

  def code(x)
    #"+"+x+"+"
    x
  end

  def ref(x)
    #"{"+x+"}"
    x
  end
end

srcdir = ENV["HOME"]+"/2013/src/mathgl-2.1.3.1/texinfo/"
dstdir = ENV["HOME"]+"/2013/git/ruby-mathgl/lib/mathgl/"

Dir.glob(srcdir+"*_en.texi") do |rf|
#[ENV["HOME"]+"/2013/src/mathgl-2.1.3.1/texinfo/core_en.texi"].each do |rf|
  src = nil
  open(rf,"r"){|io| src = io.read}
  if /deftypefn/=~src
    wf = dstdir+"libdoc_"+File.basename(rf,".texi")+".rb"
    puts "#{rf} -> #{wf}"
    tp = TexiParse.new
    tp.parse(src)
    if !tp.empty?
      open(wf,"w"){|io|
      io.puts "# This document is converted from #{File.basename(rf)}."
        tp.write(io)
      }
    end
  end
end
