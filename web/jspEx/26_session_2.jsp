<%@ page contentType = "text/html; charset=euc-kr" %>

<HTML>
<HEAD>
<TITLE> 세션 </TITLE>
</HEAD>
<BODY>

<%
session.invalidate();
%>
세션 종료 완료

</BODY>
</HTML>