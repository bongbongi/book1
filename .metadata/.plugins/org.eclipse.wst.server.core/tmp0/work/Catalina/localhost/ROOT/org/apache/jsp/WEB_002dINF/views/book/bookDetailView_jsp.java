/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.69
 * Generated at: 2023-01-13 08:47:34 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views.book;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class bookDetailView_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

private static org.apache.jasper.runtime.ProtectedFunctionMapper _jspx_fnmap_0;

static {
  _jspx_fnmap_0= org.apache.jasper.runtime.ProtectedFunctionMapper.getMapForFunction("fn:replace", org.apache.taglibs.standard.functions.Functions.class, "replace", new Class[] {java.lang.String.class, java.lang.String.class, java.lang.String.class});
}

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(3);
    _jspx_dependants.put("jar:file:/C:/코딩/ezen/book/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/book/WEB-INF/lib/jstl-1.2.jar!/META-INF/c.tld", Long.valueOf(1153352682000L));
    _jspx_dependants.put("jar:file:/C:/코딩/ezen/book/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/book/WEB-INF/lib/jstl-1.2.jar!/META-INF/fn.tld", Long.valueOf(1153352682000L));
    _jspx_dependants.put("/WEB-INF/lib/jstl-1.2.jar", Long.valueOf(1672800669542L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems;

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
    _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems.release();
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\n");
      out.write("\n");
      out.write("    \n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<meta charset=\"UTF-8\">\n");
      out.write("<title>Insert title here</title>\n");
      out.write("<!-- CSS only -->\n");
      out.write("<link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi\" crossorigin=\"anonymous\">\n");
      out.write("<link href=\"/resources/css/bookDetailView.css\" rel=\"stylesheet\" />\n");
      out.write("<style>\n");
      out.write(".intro{\n");
      out.write("    display:-webkit-box; \n");
      out.write("    word-wrap:break-word; \n");
      out.write("    -webkit-line-clamp:3; \n");
      out.write("    -webkit-box-orient:vertical; \n");
      out.write("    overflow:hidden; \n");
      out.write("    text-overflow:ellipsis; \n");
      out.write("    line-height:18px; \n");
      out.write("    height:54px; \n");
      out.write("    text-decoration:none;\n");
      out.write("    }\n");
      out.write(".bookDetail {\n");
      out.write("   display: flex;\n");
      out.write("   flex-direction: column;\n");
      out.write("   align-items: center;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".title {\n");
      out.write("   width: 900px;\n");
      out.write("   height: 100px;\n");
      out.write("   background-color: aquamarine;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".pyoji {\n");
      out.write("   margin-right: 50px;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".seoji {\n");
      out.write("   margin-right: 100px;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".intro {\n");
      out.write("   width: 600px;\n");
      out.write("   background-color: gray;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".detail {\n");
      out.write("   width: 600px;\n");
      out.write("   height: 400px;\n");
      out.write("   background-color: beige;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".review {\n");
      out.write("   \n");
      out.write("}\n");
      out.write("\n");
      out.write(".abcd {\n");
      out.write("   display: flex;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".arrow {\n");
      out.write("   display: flex;\n");
      out.write("   flex-direction: column;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".qty {\n");
      out.write("   display: flex;\n");
      out.write("   flex-direction: row;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".qty>input {\n");
      out.write("   height: 20px;\n");
      out.write("   width: 60px;\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../layout/header.jsp", out, false);
      out.write("\n");
      out.write("   <div class=\"bookDetail\">\n");
      out.write("      <div class=\"title\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${bvo.book_title}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("</div>\n");
      out.write("      \n");
      out.write("         ");
      if (_jspx_meth_c_005fforEach_005f0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("      <br>\n");
      out.write("      <div class=\"intro\">책 소개 ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${bvo.book_content}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("</div>\n");
      out.write("      <div class=\"detail\">책 상세</div>\n");
      out.write("      <div class=\"review\">\n");
      out.write("         <form class=\"mb-3\" name=\"myform\" id=\"myform\" method=\"post\">\n");
      out.write("            <fieldset>\n");
      out.write("               <span class=\"text-bold\">별점을 선택해주세요</span> <input type=\"radio\" name=\"reviewStar\" value=\"5\" id=\"rate1\"><label for=\"rate1\">★</label> <input type=\"radio\" name=\"reviewStar\" value=\"4\" id=\"rate2\"><label for=\"rate2\">★</label> <input type=\"radio\" name=\"reviewStar\" value=\"3\" id=\"rate3\"><label for=\"rate3\">★</label> <input type=\"radio\" name=\"reviewStar\" value=\"2\" id=\"rate4\"><label for=\"rate4\">★</label> <input type=\"radio\" name=\"reviewStar\" value=\"1\" id=\"rate5\"><label for=\"rate5\">★</label>\n");
      out.write("            </fieldset>\n");
      out.write("            <div>\n");
      out.write("               <textarea class=\"col-auto form-control\" type=\"text\" id=\"reviewContents\" placeholder=\"좋은 수강평을 남겨주시면 Cocolo에 큰 힘이 됩니다! 포인트 5000p도 지급!!\"></textarea>\n");
      out.write("            </div>\n");
      out.write("         </form>\n");
      out.write("      </div>\n");
      out.write("   </div>\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../layout/footer.jsp", out, false);
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }

  private boolean _jspx_meth_c_005fforEach_005f0(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_005fforEach_005f0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    boolean _jspx_th_c_005fforEach_005f0_reused = false;
    try {
      _jspx_th_c_005fforEach_005f0.setPageContext(_jspx_page_context);
      _jspx_th_c_005fforEach_005f0.setParent(null);
      // /WEB-INF/views/book/bookDetailView.jsp(84,9) name = items type = javax.el.ValueExpression reqTime = true required = false fragment = false deferredValue = true expectedTypeName = java.lang.Object deferredMethod = false methodSignature = null
      _jspx_th_c_005fforEach_005f0.setItems(new org.apache.jasper.el.JspValueExpression("/WEB-INF/views/book/bookDetailView.jsp(84,9) '${fList}'",_jsp_getExpressionFactory().createValueExpression(_jspx_page_context.getELContext(),"${fList}",java.lang.Object.class)).getValue(_jspx_page_context.getELContext()));
      // /WEB-INF/views/book/bookDetailView.jsp(84,9) name = var type = java.lang.String reqTime = false required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005fforEach_005f0.setVar("book");
      int[] _jspx_push_body_count_c_005fforEach_005f0 = new int[] { 0 };
      try {
        int _jspx_eval_c_005fforEach_005f0 = _jspx_th_c_005fforEach_005f0.doStartTag();
        if (_jspx_eval_c_005fforEach_005f0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
          do {
            out.write("\n");
            out.write("         \n");
            out.write("         \n");
            out.write("      <div class=\"abcd\">\n");
            out.write("         <div class=\"pyoji\">\n");
            out.write("            <img src=\"/upload/");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${fn:replace(book.save_dir,'\\\\','/')}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, _jspx_fnmap_0));
            out.write('/');
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${book.uuid}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write("_th_");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${book.file_name}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write("\" style=\"list-style:none;\">\n");
            out.write("         </div>\n");
            out.write("         <div class=\"seoji\">\n");
            out.write("            서지 정보<br> 판매가 OOOOO원<br> 어쩌구저쩌구<br> 배송료 OOOO원<br> 어쩌구<br>\n");
            out.write("            <br>\n");
            out.write("            <div class=\"qty\">\n");
            out.write("               수량 <input type=\"number\" name=\"book_count\" min=\"1\" value=\"1\">\n");
            out.write("               <div class=\"arrow\">\n");
            out.write("                  <a href=\"#\"><img src=\"/resources/images/up.png\" class=\"upArrow\" alt=\"upArrow\"></a>\n");
            out.write("                   <a href=\"#\"><img src=\"/resources/images/down.png\" class=\"downArrow\" alt=\"downArrow\"></a><br>\n");
            out.write("                  <br>\n");
            out.write("               </div>\n");
            out.write("            </div>\n");
            out.write("            <button type=\"button\" class=\"btn btn-secondary\">장바구니 담기</button>\n");
            out.write("            <button type=\"button\" class=\"btn btn-success\">바로구매</button>\n");
            out.write("         </div>\n");
            out.write("      </div>\n");
            out.write("      ");
            int evalDoAfterBody = _jspx_th_c_005fforEach_005f0.doAfterBody();
            if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
              break;
          } while (true);
        }
        if (_jspx_th_c_005fforEach_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
          return true;
        }
      } catch (java.lang.Throwable _jspx_exception) {
        while (_jspx_push_body_count_c_005fforEach_005f0[0]-- > 0)
          out = _jspx_page_context.popBody();
        _jspx_th_c_005fforEach_005f0.doCatch(_jspx_exception);
      } finally {
        _jspx_th_c_005fforEach_005f0.doFinally();
      }
      _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems.reuse(_jspx_th_c_005fforEach_005f0);
      _jspx_th_c_005fforEach_005f0_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005fforEach_005f0, _jsp_getInstanceManager(), _jspx_th_c_005fforEach_005f0_reused);
    }
    return false;
  }
}
