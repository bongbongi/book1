/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.69
 * Generated at: 2023-01-04 07:21:28 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views.member;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class orderPWsearch_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

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
  }

  public void _jspDestroy() {
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<meta charset=\"UTF-8\">\n");
      out.write("<!-- CSS only -->\n");
      out.write("<link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css\" \n");
      out.write("rel=\"stylesheet\" integrity=\"sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi\" \n");
      out.write("crossorigin=\"anonymous\">\n");
      out.write("<title>Insert title here</title>\n");
      out.write("<style type=\"text/css\">\n");
      out.write("body{\n");
      out.write("	text-align: center;\n");
      out.write("	margin:0 auto;\n");
      out.write("	width: 100%;\n");
      out.write("	padding-top : 150px;\n");
      out.write("}\n");
      out.write(".logo>a>img{\n");
      out.write("	width: 150px;\n");
      out.write("	height: 150px;\n");
      out.write("}\n");
      out.write(".login-container{\n");
      out.write("	border: 1px solid gray;\n");
      out.write("	width: 500px;\n");
      out.write("	height: 100%;\n");
      out.write("	\n");
      out.write("	margin: 30px auto;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".Non-search>a>button{\n");
      out.write("	text-decoration: none;\n");
      out.write("	background-color: white;\n");
      out.write("	\n");
      out.write("	font-size: 15px;\n");
      out.write("	width: 100px;\n");
      out.write("	height: 43.5px;\n");
      out.write("	color : gray;\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("	<div class=\"Non-search\">\n");
      out.write("			<a href=\"/nonMem/orderNumsearch\"><button>주문번호<br>찾기</button></a>\n");
      out.write("			<a href=\"/nonMem/orderPWsearch\"><button>주문비밀번호<br>찾기</button></a> \n");
      out.write("	</div>\n");
      out.write("	<div class=\"login-container\">\n");
      out.write("		<div class=\"logo\">\n");
      out.write("			<a href=\"/\"><img src=\"../resources/logo.jpg\" alt=\"로고\"></a><br>\n");
      out.write("		</div>\n");
      out.write("		<div class=\"login\">\n");
      out.write("			<form action=\"/non-mem/login\" method=\"post\">\n");
      out.write("				<input type=\"text\" placeholder=\"주문번호\" name=\"mem_num\"><Br>\n");
      out.write("				<input type=\"text\" placeholder=\"이름\" name=\"mem_name\"><Br>\n");
      out.write("				<input type=\"password\" placeholder=\"휴대폰 번호\" name=\"mem_cell_num\"><br><br>\n");
      out.write("				<a href=\"/mem/joinPage\">회원가입 하시겠습니까?</a><br>\n");
      out.write("				<a><button type=\"submit\" class=\"btn btn-outline-secondary\">확인</button></a><br><br>\n");
      out.write("			</form>				\n");
      out.write("		</div>\n");
      out.write("	</div>\n");
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
}
