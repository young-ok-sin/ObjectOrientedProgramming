<%@ page language="java" contentType="text/html;charset=euc-kr" %>
<%@ page isErrorPage="true" %>

<HTML>
<HEAD>
<TITLE> exception 객체 </TITLE>
</HEAD>
<BODY>

<% 
out.println("에러메시지 : " + exception.getMessage() + "<BR>");
out.println("에러클레스 및 메시지 : " + exception.toString() + "<BR>");
%> 

</BODY>
</HTML>