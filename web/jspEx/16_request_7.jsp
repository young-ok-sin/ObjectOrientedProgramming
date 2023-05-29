<%@ page language="java" contentType="text/html; charset=euc-kr" %>

<HTML>
<HEAD>
<TITLE> request 객체 </TITLE>
</HEAD>
<BODY>

<% 
String name = request.getParameter("strName"); 
String addr = request.getParameter ("strAddr");

out.println("이름 : " + name + "<BR>");
out.println("주소 : " + addr);
%>

</BODY>
</HTML>
