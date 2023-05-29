<%@ page language="java" contentType="text/html; charset=euc-kr" %>

<HTML>
<HEAD>
<TITLE> response °´Ã¼ </TITLE>
</HEAD>
<BODY>

<%
String strTemp = "response_5.jsp?strID=apple&strPwd=apple";

out.println(strTemp + "<BR>");
out.println("encodeURL() : " + response.encodeURL(strTemp) + "<BR>");
out.println("encodeRedirect() : " + response.encodeRedirectURL(strTemp) + "<BR>");
%>

</BODY>
</HTML>
