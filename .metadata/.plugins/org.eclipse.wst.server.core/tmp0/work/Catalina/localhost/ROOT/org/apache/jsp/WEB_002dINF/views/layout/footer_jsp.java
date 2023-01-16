/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.69
 * Generated at: 2023-01-16 02:33:07 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views.layout;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class footer_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<title>Insert title here</title>\n");
      out.write("<style>\n");
      out.write(".footer {\n");
      out.write("	width: 1260px;\n");
      out.write("	height: 230px;\n");
      out.write("	background-color: rgba(175, 175, 175, 0.5);\n");
      out.write("	margin: 0 auto;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".footer-logo {\n");
      out.write("	\n");
      out.write("	width: 120px;\n");
      out.write("	height: 120px;\n");
      out.write("	background-color: beige;\n");
      out.write("}\n");
      out.write(".footer-logo>img{\n");
      out.write("	width: 120px;\n");
      out.write("	height: 120px;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".address-box {\n");
      out.write("	text-align: left;\n");
      out.write("	padding: 0;\n");
      out.write("	margin: 0;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".address {\n");
      out.write("	padding: 15px;\n");
      out.write("	height: 150px;\n");
      out.write("	display: flex;\n");
      out.write("	font-size: 15px;\n");
      out.write("	/* align-items: baseline; */\n");
      out.write("	flex-direction: row;\n");
      out.write("	flex-wrap: nowrap;\n");
      out.write("	justify-content: space-around;\n");
      out.write("}\n");
      out.write("\n");
      out.write("ul {\n");
      out.write("	list-style: none;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".footer, .address li {\n");
      out.write("	\n");
      out.write("}\n");
      out.write("\n");
      out.write(".footer-top {\n");
      out.write("	text-align: center;\n");
      out.write("	padding-top: 12px;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".footer-top>ul {\n");
      out.write("	margin: 0;\n");
      out.write("	padding: 0;\n");
      out.write("	display: flex;\n");
      out.write("	justify-content: center;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".footer-top>li {\n");
      out.write("	margin: 0;\n");
      out.write("	padding: 0;\n");
      out.write("}\n");
      out.write("\n");
      out.write("a {\n");
      out.write("	text-decoration-line: none;\n");
      out.write("	color: black;\n");
      out.write("}\n");
      out.write("\n");
      out.write("a:visited {\n");
      out.write("	text-decoration: none;\n");
      out.write("}\n");
      out.write("\n");
      out.write("a:hover {\n");
      out.write("	text-decoration: none;\n");
      out.write("}\n");
      out.write("\n");
      out.write("a:focus {\n");
      out.write("	text-decoration: none;\n");
      out.write("}\n");
      out.write("\n");
      out.write("a:hover, a:active {\n");
      out.write("	text-decoration: none;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".online-serviceBar {\n");
      out.write("	padding: 0px;\n");
      out.write("	margin-left: 20px;\n");
      out.write("	width: 120px;\n");
      out.write("	height: 120px;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".online-serviceBar>ul {\n");
      out.write("	margin: 0px;\n");
      out.write("	padding: 0px;\n");
      out.write("}\n");
      out.write("\n");
      out.write("</style>\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("	<div class=\"footer\">\n");
      out.write("		<div class=\"footer-top\">\n");
      out.write("			<ul>\n");
      out.write("				<li><a href=\"/introduce\">회사소개 　|　 </a></li>\n");
      out.write("				<li><a href=\"/tos\">이용약관 　| 　</a></li>\n");
      out.write("				<li><a href=\"/pp\">개인정보처리방침</a></li>\n");
      out.write("			</ul>\n");
      out.write("		</div>\n");
      out.write("		<hr>\n");
      out.write("		<div class=\"address\">\n");
      out.write("			<div class=\"footer-logo\">\n");
      out.write("				<img src=\"../resources/img/logo2.png\" alt=\"로고\">\n");
      out.write("			</div>\n");
      out.write("			<div class=\"address-box\">\n");
      out.write("				<ul>\n");
      out.write("					<li>회사명 : (주)WW <span style=\"margin-right: -7px;\">ㅣ</span>\n");
      out.write("						대표이사 : ABC\n");
      out.write("					</li>\n");
      out.write("\n");
      out.write("					<li>소재지 : 인천광역시 남동구 구월 5415</li>\n");
      out.write("					<li>사업자 등록번호 : 123-45-67890 <span style=\"margin-right: -7px;\">ㅣ</span>\n");
      out.write("						통신판매업 신고번호 : 2023-인천-00000\n");
      out.write("					</li>\n");
      out.write("\n");
      out.write("					<li>개인정보관리 책임자 : ezen <span style=\"margin-right: -7px;\">ㅣ</span>\n");
      out.write("						abc@ezen.ww.kr <span style=\"margin-right: -7px;\">ㅣ</span> 대량주문 :\n");
      out.write("						abc@ezen.ww.kr\n");
      out.write("					</li>\n");
      out.write("\n");
      out.write("					<li>COPYRIGHT © WW BOOKSTORE INC. ALL RIGHTS RESERVED.</li>\n");
      out.write("\n");
      out.write("				</ul>\n");
      out.write("\n");
      out.write("			</div>\n");
      out.write("			<div class=\"online-serviceBar\">\n");
      out.write("				<strong>온라인 서비스</strong>\n");
      out.write("				<ul>\n");
      out.write("					<li><a href=\"/mem/mypage\">마이페이지</a></li>\n");
      out.write("					<li><a href=\"/ntc/noticeOnly\">공지사항</a></li>\n");
      out.write("					<li><a href=\"/board/list\">1대1문의</a></li>\n");
      out.write("					<li><a href=\"/faq/faqListOnly\">FAQ</a></li>\n");
      out.write("				</ul>\n");
      out.write("			</div>\n");
      out.write("		</div>\n");
      out.write("	</div>\n");
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
}
