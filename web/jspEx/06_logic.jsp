<%@ page language="java" contentType="text/html;charset=euc-kr" %>

<HTML>
<HEAD>
<TITLE> 논리 연산자 </TITLE>
</HEAD>
<BODY>

<%
int intNum = 5;

out.println("intNum > 1 && intNum < 5 : " + (intNum > 1 && intNum < 5 ) + "<BR>"); 
out.println("intNum > 1 || intNum < 5 : " + (intNum > 1 || intNum < 5) + "<BR>"); 
out.println("! intNum > 1 : " + (! (intNum > 1)) + "<BR>");
out.println("intNum > 1 & intNum < 5 : " + (intNum > 1 & intNum < 5) + "<BR>");
out.println("intNum > 1 | intNum < 5 : " + (intNum > 1 | intNum < 5) + "<BR>");
%>

</BODY>
</HTML>




