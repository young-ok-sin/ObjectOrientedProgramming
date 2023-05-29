<%@ page language="java" contentType="text/html; charset=euc-kr" %>

<HTML>
<HEAD>
<TITLE> session 객체 </TITLE>
</HEAD>
<BODY>

<%
String ID = request.getParameter("strID");

String strSessionID = session.getId();
int intTime = session.getMaxInactiveInterval();
%>

<B> <%=ID %> 님 환영합니다. </B> <P> 
세션 ID : <%=strSessionID %> <BR>
세션 시간 : <%=intTime %>

</BODY>
</HTML>
