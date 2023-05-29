<%@ page language="java" contentType="text/html; charset=euc-kr" %>
<% request.setCharacterEncoding("euc-kr"); %> <!--한글 인코딩 해줌! 안해주면 받아온 값들이 한글인 경우 깨짐-->

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
