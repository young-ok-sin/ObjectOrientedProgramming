<%@ page language="java" contentType="text/html;charset=euc-kr" %>

<HTML>
<HEAD>
<TITLE> ELSE IF 문 </TITLE>
</HEAD>
<BODY>

<%
int intScore = 8; 

if (intScore > 10){
	out.println("회원님의 등급은 골드입니다.");
}else if (intScore > 5){
	out.println("회원님의 등급은 실버입니다.");
}else {
	out.println("회원님의 등급은 일반입니다.");
}
%>

</BODY>
</HTML>
