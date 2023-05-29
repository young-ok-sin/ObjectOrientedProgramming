<%@ page contentType = "text/html; charset=euc-kr" %>
<%@ page import = "java.net.URLEncoder" %>

<HTML>
<HEAD>
<TITLE> 쿠키 </TITLE>
</HEAD>
<BODY>

<%
Cookie cookie1 = new Cookie("Name", URLEncoder.encode("홍길동"));
Cookie cookie2 = new Cookie("Job", URLEncoder.encode("학생"));

response.addCookie(cookie1);
response.addCookie(cookie2);
%>

쿠키가 생성되었습니다.

</BODY>
</HTML>