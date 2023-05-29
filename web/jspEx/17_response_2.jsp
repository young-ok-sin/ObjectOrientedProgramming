<%@ page language="java" contentType="text/html; charset=euc-kr" %>

<HTML>
<HEAD>
<TITLE> response °´Ã¼ </TITLE>
</HEAD>
<BODY>

<%
String strSite = request.getParameter("download");

switch(Integer.parseInt(strSite))
{
	case 1:
		response.sendRedirect("http://java.sun.com");
		break;	
	case 2:
		response.sendRedirect("http://jakarta.apache.org");
		break;
	case 3:
		response.sendRedirect("http://www.editplus.com");
		break;
	default:
		response.sendRedirect("http://www.ultraedit.com");
		break;
}
%>

</BODY>
</HTML>
