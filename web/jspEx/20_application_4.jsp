<%@ page language="java" contentType="text/html;charset=euc-kr" %>

<HTML>
<HEAD>
<TITLE> application 객체  </TITLE>
</HEAD>
<BODY>

<%
application.setAttribute("Name", "김지홍");
application.setAttribute("Age", "17세");
application.setAttribute("Email", "hong@shop.com");
application.setAttribute("Job", "Programmer");
application.setAttribute("Taste", "독서");

application.removeAttribute("Job");
%>

이 름  : <%=application.getAttribute("Name") %> <BR>
나 이  : <%=application.getAttribute("Age") %> <BR>
이메일 : <%=application.getAttribute("Email") %> <BR>
직 업  : <%=application.getAttribute("Job") %> <BR>
취 미  : <%=application.getAttribute("Taste") %>

</BODY>
</HTML>
