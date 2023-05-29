<%@ page import="java.util.Date" language="java" contentType="text/html; charset=euc-kr" %>

<HTML>
<HEAD>
<TITLE> 동적 웹 사이트 </TITLE>
</HEAD>
<BODY>

<%
    Date Time = new Date(); 
    out.println(Time); //html에서 해당 변수의 내용을 print해줌
%>

</BODY>
</HTML>