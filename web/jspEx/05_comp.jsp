<%@ page language="java" contentType="text/html;charset=euc-kr" %>

<HTML>
<HEAD>
<TITLE> 비교 연산자 </TITLE>
</HEAD>
<BODY>

<%
int intNum1 = 11;
int intNum2 = 5;

out.println("Num1 == Num2 : " + (intNum1 == intNum2) + "<BR>");
out.println("Num1 < Num2 : " + (intNum1 < intNum2) + "<BR>");
out.println("Num1 <= Num2 : " + (intNum1 <= intNum2) + "<BR>");
out.println("Num1 > Num2 : " + (intNum1 > intNum2) + "<BR>");
out.println("Num1 >= Num2 : " + (intNum1 >= intNum2) + "<BR>");
out.println("Num1 != Num2 : " + (intNum1 != intNum2) + "<BR>");
%>

</BODY>
</HTML>


