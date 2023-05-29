<%@ page contentType = "text/html; charset=euc-kr" %>
<%@ page import = "java.net.URLEncoder" %>

<HTML>
<HEAD>
<TITLE> 쿠키 </TITLE>
</HEAD>
<BODY>

<%
Cookie cookie1 = new Cookie("Name", URLEncoder.encode("홍길동"));
cookie1.setPath("/");
response.addCookie(cookie1);

Cookie cookie2 = new Cookie("Job", URLEncoder.encode("학생"));
cookie2.setPath("/jsp/");
response.addCookie(cookie2);

out.println(cookie1.getName() + " 쿠키의 값 : " + cookie1.getValue() + "<BR>");
out.println("경로 : " + cookie1.getPath() + "<BR><BR>");

out.println(cookie2.getName() + " 쿠키의 값 : " + cookie2.getValue() + "<BR>");
out.println("경로 : " + cookie2.getPath());
%>

</BODY>
</HTML>