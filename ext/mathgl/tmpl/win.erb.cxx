#include "ruby.h"

#include "mgl2/type.h"
#include "mgl2/data.h"
#include "mgl2/mgl.h"
#include "mgl2/<%=low%>.h"

#define VALUEFUNC(f) ((VALUE (*)(ANYARGS)) f)

static ID id_call;
static ID id_draw;
static ID id_handler;
static ID id_instance_eval;
static VALUE mMglGraph;

class mglRubyDraw : public mglDraw
{
    VALUE ruby_block;
    int arity;
public:
    mglRubyDraw(VALUE block) : mglDraw()
    {
        ruby_block = block;
        if (RTEST(block)) {
            arity = rb_proc_arity(block);
            if (arity<0 || arity>1) {
                rb_raise(rb_eArgError,"wrong # of block argument (%d for 0..1)",
                         arity);
            }
        } else {
            arity = 0;
        }
    }
    int Draw(mglGraph *gr)
    {
        VALUE graph;
        if (RTEST(ruby_block)) {
            graph = Data_Wrap_Struct(mMglGraph, 0, 0, gr);
            if (arity==1) {
                rb_funcall(ruby_block, id_call, 1, graph);
            } else {
                rb_funcall_with_block(graph, id_instance_eval, 0, 0, ruby_block);
            }
        }
        return 0;
    }
    void Reload()   {}  ///< Function for reloading data
    void Click()    {}  ///< Callback function on mouse click
    ~mglRubyDraw()  {}
};

static void
mgl<%=low%>_free(mgl<%=up%> *arg1)
{
    delete arg1;
}

static VALUE
mgl<%=low%>_s_allocate(VALUE klass)
{
  return Data_Wrap_Struct(klass, 0, mgl<%=low%>_free, 0);
}

static VALUE mgl<%=low%>_initialize(int nargs, VALUE *args, VALUE self)
{
    mgl<%=up%> *result = 0;
    mglRubyDraw *mgl_draw = 0;
    const char *title = 0;
    VALUE block=Qnil;
    VALUE v;

    switch (nargs) {
    case 0:
        break;
    case 1:
        if (rb_obj_is_kind_of(args[0],rb_cString)) {
            title = StringValueCStr(args[0]);
        } else {
            rb_raise(rb_eArgError, "argument is not a String");
        }
    default:
        rb_raise(rb_eArgError, "wrong # of arguments(%d for 0..1)",nargs);
    }

    if (rb_block_given_p()) {
        block = rb_block_proc();
    }
    mgl_draw = (mglRubyDraw *)new mglRubyDraw(block);
    v = Data_Wrap_Struct(rb_cData, 0, -1, mgl_draw);
    rb_ivar_set(v, id_handler, block);
    rb_ivar_set(self, id_draw, v);

    if (title==0) {
        result = (mgl<%=up%> *)new mgl<%=up%>(mgl_draw);
    } else {
        result = (mgl<%=up%> *)new mgl<%=up%>(mgl_draw, title);
    }
    DATA_PTR(self) = result;
    return self;
}

<% if has_run %>
static VALUE mgl<%=low%>_run(VALUE self)
{
    mgl<%=up%> *arg;
    int result;
    arg = reinterpret_cast< mgl<%=up%> * >(DATA_PTR(self));
    result = (int)(arg)->Run();
    return INT2NUM(result);
}
<% end %>

extern "C" {
void
Init_<%=low%>()
{
    VALUE mMathGL;
    VALUE cMgl<%=up%>;

    mMathGL = rb_const_get(rb_cObject, rb_intern("MathGL"));
    mMglGraph = rb_const_get(mMathGL, rb_intern("MglGraph"));

    cMgl<%=up%> = rb_define_class_under(mMathGL, "Mgl<%=up%>", rb_cObject);
    rb_define_alloc_func(cMgl<%=up%>, mgl<%=low%>_s_allocate);
    rb_define_method(cMgl<%=up%>, "initialize", VALUEFUNC(mgl<%=low%>_initialize), -1);
<% if has_run %>
    rb_define_method(cMgl<%=up%>, "run", VALUEFUNC(mgl<%=low%>_run), 0);
<% end %>

    id_call = rb_intern("call");
    id_draw = rb_intern("draw");
    id_handler = rb_intern("handler");
    id_instance_eval = rb_intern("instance_eval");
}
}
