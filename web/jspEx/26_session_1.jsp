<%@ page contentType = "text/html; charset=euc-kr" %>

<HTML>
<HEAD>
<TITLE> 技记 </TITLE>
</HEAD>
<BODY>

<%
session.setAttribute("Name", "全辨悼");
session.setAttribute("Job", "切积");

String strName = (String)session.getAttribute("Name");
String strJob = (String)session.getAttribute("Job");

out.println ("技记 ID : " + session.getId() + "<BR><BR>");
out.println ("Name 蔼 : " + strName + "<BR>");
out.println ("Job 蔼 : " + strJob);
%>

</BODY>
</HTML>