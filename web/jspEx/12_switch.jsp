<%@ page language="java" contentType="text/html;charset=euc-kr" %>

<HTML>
<HEAD>
<TITLE> Switch Case문 </TITLE>
</HEAD>
<BODY>

<%
int intScore = 10;

switch (intScore){
	case 10:
		out.println("회원님의 등급은 골드입니다.");
		break;
	case 5:
		out.println("회원님의 등급은 실버입니다.");
		break;
	default:
		out.println("회원님의 등급은 일반입니다.");
}
%>

</BODY>
</HTML>
