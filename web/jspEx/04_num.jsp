<%@ page language="java" contentType="text/html;charset=euc-kr" %>

<HTML>
<HEAD>
<TITLE> ¿¬»êÀÚ </TITLE>
</HEAD>
<BODY>

<%
int intNum1 = 11;
int intNum2 = 5;

out.println("Num1 = " + intNum1 + " Num2 = " + intNum2  + "<BR><BR>"); 
out.println("Num1 + Num2 = " + (intNum1 + intNum2) + "<BR>"); 
out.println("Num1 - Num2 = " + (intNum1 - intNum2) + "<BR>"); 
out.println("Num1 * Num2 = " + (intNum1 * intNum2) + "<BR>"); 
out.println("Num1 / Num2 = " + (intNum1 / intNum2) + "<BR>"); 
out.println("Num1 mod Num2 = " + (intNum1 % intNum2) + "<BR>");
%>

</BODY>
</HTML>

