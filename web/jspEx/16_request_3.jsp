<%@ page language="java" contentType="text/html; charset=euc-kr" %>

<HTML>
<HEAD>
<TITLE> request 객체 </TITLE>
</HEAD>
<BODY>

<% 
String ID = request.getParameter("strID");  //request로 받은 값들을 전부 받아서 출력해줌.
String pass = request.getParameter ("strPwd"); //request로 받은 값들을 전부 받아서 출력해줌.

out.println("아이디 : " + ID + "<BR>");
out.println("비밀번호 : " + pass);
%>

</BODY>
</HTML>
