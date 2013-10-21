class ConvSample
  def initialize
    @a = []
    @n_indent = 0
  end

  def parse
    @s = ARGF.read
    @s.gsub!(/\/\/.*?$/m, "")
    @i = -1

    print "
libdir = File.expand_path(File.dirname(__FILE__))
require libdir+"/../ext/mathgl/mathgl.so"
require libdir+"/prepare"

def mgl_rnd
  rand
end

def pow(a,b)
  a**b
end

M_PI = Math::PI
NULL = nil
NAN  = 0.0/0.0

procs = {}
"
    @s.scan(/^(void (\w+)\(([^)]*)\)\s*^{(.*?)^})/m) do |f|
      parse_func($1,$2,$3,$4)
    end
    print "
kind = 'png'
gr = MathGL::MglGraph.new
procs.each do |key,blk|
  file = 'smpl_'+key+'.'+kind
  if !File.exist?(file)
    puts key
    gr.set_size(960,720)
    gr.vertex_color(false)
    gr.compression(false)
    gr.default_plot_param()
    gr.clf
    gr.instance_eval(&blk)
    case kind
    when 'eps'
      gr.write_eps(file)
    when 'png'
      gr.write_png(file,'',false)
    end
  end
end
"
  end

  def parse_func(all,name,args,body)
    if /^smgl_(\w+)/ =~ name
      name = $1
    end
    return if name == "parser"

    all.split(/^/).each do |line|
      print "# "+line
    end
    print "\n"

    body.gsub!(/\bsplot1\(b\);/m, "b.Norm(-1,1,true);gr->Rotate(70,60);gr->Box();gr->Surf3(b);")
    body.gsub!(/\bsplot2\(b\);/m, "b.Norm(-1,1,true);gr->Rotate(70,60);gr->Box();gr->Surf3(0.5,b);gr->Surf3(-0.5,b);")
    body.gsub!(/'0'\+i/m,"'%d'%i")

    re = /(?<pare>\(([^\(\)]++|\g<pare>)*+\))/
    body.gsub!(re){ @i+=1; @a[@i]=$1; "@#{@i}@" }
    re = /=\s*\{([^{}]*)\}/
    body.gsub!(re){ @i+=1; @a[@i]="[#{$1}]"; "=@#{@i}@" }

    if /mgls_/=~name
      a = args.split(/,/).map{|x| /(\w+)$/=~x; "#{$1}=nil"}
      print "def "+name+"("+a.join(",")+")\n"
    else
      print "procs['#{name}'] = proc do\n"
    end
    indent_up
    parse_body(body)
    indent_down
    print "end\n\n"
  end

  def restore_fix(s)
    s = s.gsub(/(\w+)?@(\d+)@/){ ($1||"")+fix_arg($1,@a[$2.to_i]) }
    s.gsub!(/\bmgl([A-Z]\w*\()/){ 'MathGL.'+fix_name('Mgl'+$1) }
    s.gsub!(/\bin\b/,"inp")
    s.gsub!(/\bL"/,'"')
    s.gsub!(/\b(\d+\.)(?![\w.])/){|x| x+'0'}
    s.sub!(/\.a\[([^\]]+)\]\s*=\s*(.*)/, '.set_val(\2,\1)')
    s.sub!(/putsw/,"#putsw")
    s.gsub!(/\bgr\./,'')
    s += "='%d'%i" if /\s*txt\[1\]=stl\[1\]/=~s
    s
  end

  def restore(s)
    s.gsub(/@(\d+)@/){@a[$1.to_i]}
  end

  def fix_arg(func,a)
    a = a.gsub(/"\s*\n\s*"/,"")
    para = a.sub!(/^\((.*)\)$/,'\1')
    re = /mglPoint(?<pare>\(([^\(\)]++|\g<pare>)*+\))/
    a.gsub!(re){|x| x.sub(/^mglPoint\((.*)\)$/,'[\1]')}
    re = /mglData(?<pare>\(([^\(\)]++|\g<pare>)*+\))/
    a.gsub!(re){|x|
      x.sub(/^mglData\((.*)\)$/){|x|
        c = $1.split(/,/)
        if c.size == 2
          c = [c[-1]]
        else
          c = [c[-1]]+c[0..-2]
        end
        c = c.join(",")
        "MathGL::MglData.new(#{c})"
      }
    }
    a.gsub!(/&(\w+)/, '\1')
    a.gsub!(/\b([a-z]\w*\.)(\w+)\(/) do
      var,meth = $1,$2
      var+fix_name(meth)+'('
    end
    b = a.split(",")
    case func
    when "set_func"
      b = b.map{|y| y=="0" ? '""' : y}
    when /dens_?/
      b[1] = '""' if b[1]=="0"
    when /^mgls_prepare/
      b = b.map{|y| y=="0" ? 'nil' : y}
    end
    a = b.join(",")
    a = "("+a+")" if para
    a
  end

  def indent
    " " * @n_indent
  end

  def indent_up
    @n_indent += 2
  end

  def indent_down
    @n_indent -= 2
  end

  def puts_asis(a)
    Kernel.puts indent+a
  end

  def puts(a)
    Kernel.puts restore_fix(indent+a)
  end

  def fix_name(x)
    x = x.gsub(/(?<=[a-z])(?=[A-Z])/,"_").downcase
    x.gsub!(/(?<=[a-z])(?=[0-9]+[a-z])/i,"_")
    x
  end

  def parse_arg(x)
    x
  end

  def parse_body(body)
    body.scan(/([^;{}]*?)(;|\{|\})/m) do |x|
      line, term = x
      line.strip!
      #p [line,term]
      case line
      when /^for@.*d\.a\[i\] = hypot@/
        puts_asis "for j in 0...a.ny"
        puts_asis "  for i in 0...a.nx"
        puts_asis "    d.set_val(Math.hypot(a.get_val(i,j),b.get_val(i,j)), i,j)"
        puts_asis "  end"
        puts_asis "end"
      when /^if\s*@(\d+)@\s*(.*)/
        i,s = $1.to_i,$2
        @a[i].gsub!(/\bmini\b/,"$mini")
        @a[i].gsub!(/^\((.*)\)$/,'\1')
        puts "if @#{i}@"
        s.strip!
        if s != ""
          indent_up
          parse_body(s+";")
          indent_down
          puts "end"
        end
      when /^for\s*@(\d+)@\s*(.*)/m
        j,s = $1,$2||""
        if /(int )?(\w+)=([^;]+);(\w+)<([^;]+);(\w+)\+\+/ =~ @a[j.to_i]
          i,b,n = $2,$3,$5
          print indent+"for #{i} in #{b}...#{n}\n"
          s.strip!
          case s
          when /^for\b/
            #indent_up
            parse_body(s+"{")
            indent_down
            puts "end"
          when ""
          else
            indent_up
            parse_line(s)
            indent_down
            puts "end"
          end
        else
          puts line
        end
      when /^\s*$/
        if term != "}" and term != ""
          puts
        end
      else
        parse_line(line)
      end
      #
      case term
      when /\{/
        indent_up
      when /\}/
        indent_down
        puts "end"
      end
    end
  end

  def parse_line(line)
    line.gsub!(/(a?sinh?|a?cosh?|a?tanh?|hypot|exp|log)@/, 'Math.\1@')
    line.gsub!(/(\w+)(?:\.|->)(\w+)(@(\d+)@)?/) do |x|
      v,m,a = $1,$2,$3||""
      "#{v}.#{fix_name(m)}#{a}"
    end
    case line
    when /^mgl(\w+)\s+([^;]+)/
      klass, vars = "Mgl"+$1, $2
      vars.scan(/([^,]+)/) do |vardef|
        vd = vardef[0].strip
        case vd
        when /^\*\s*(\w+)\s*=\s*new\s+mgl(\w+)(@\d+@)?/
          v,c,a = $1, "MathGL::Mgl"+$2, $3||""
          puts "#{v} = #{c}.new#{a}"
        when /^\*?\s*(\w+)\s*=\s*(.*)/
          v,d = $1, $2
          puts "#{v} = #{d}"
        when /^\s*(\w+)(@(\d+)@)?/
          v,a,i = $1,$2,$3
          if a
            i = i.to_i
            if klass == "MglData"
              if /\(((\d+),)?(\d+),([a-z]+)\)/ =~ @a[i]
                if $1
                  @a[i] = "(#{$4},#{$2},#{$3})"
                else
                  @a[i] = "(#{$4})"
                end
              end
            end
            puts "#{v} = MathGL::#{klass}.new#{a}"
          else
            puts "#{v} = MathGL::#{klass}.new"
          end
        else
          puts vd
        end
      end
    when /^\s*(int|register long|double) ([^;]+)/
      $2.split(',').each do |v|
        case v
        when /(\w+)(\[\d*\])?\s*(=\s*([^,]+))/
          if $3
            puts "#{$1} = #{$4}"
          elsif $2
            puts "#{$1} = []"
          end
        end
      end
    when /^(const)?\s*char ([^;]+)/
      args = $2+","
      args.scan(/(\*)?(\w+)(\[\d*\])?\s*=\s*([^,]+?),/) do
        puts "#{$2} = #{$4}"
      end
    when /\bgr.(\w+)(@\d+@)/
      meth,args = $1,$2
      puts meth+args
    when /,/
      line.split(',').each do |v|
        puts v.strip
      end
    when /([^=]+)=([^=]+)/
      x,y = $1,$2
      puts parse_arg(x)+"="+parse_arg(y)
    else
      puts line
    end
  end

end

ConvSample.new.parse
