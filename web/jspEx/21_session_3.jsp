<%@ page language="java" contentType="text/html; charset=euc-kr" %>

<HTML>
<HEAD>
<TITLE> session 객체 </TITLE>
</HEAD>
<BODY>

<%
long lastTime = session.getLastAccessedTime();
long createTime = session.getCreationTime();
long useTime = (lastTime - createTime) / 60000;
%>

Last Time : <%=lastTime%><br>
Create Time : <%=createTime%><br>
<%=useTime %>
초 동안 사이트에 접속되어 있습니다.

</BODY>
</HTML>
