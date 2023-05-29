<%@ page language="java" contentType="text/html;charset=euc-kr" %>

<HTML>
<HEAD>
<TITLE> Do While문 </TITLE>
</HEAD>
<BODY>

<% 
int intCount = 1;

do {
	out.println("회원님은" + intCount + "번째 방문입니다.<BR>");
	intCount ++;
	
} while (intCount < 10);
%>

</BODY>
</HTML>

