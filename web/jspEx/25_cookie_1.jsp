<%@ page contentType = "text/html; charset=euc-kr" %>
<%@ page import = "java.net.URLEncoder" %>
<%@ page import = "java.net.URLDecoder" %>

<HTML>
<HEAD>
<TITLE> ÄíÅ° </TITLE>
</HEAD>
<BODY>

<%
Cookie cookie1 = new Cookie("Name", URLEncoder.encode("È«±æµ¿"));
Cookie cookie2 = new Cookie("Job", URLEncoder.encode("ÇĞ»ı"));

response.addCookie(cookie1);
response.addCookie(cookie2);

out.println(cookie1.getName()+ " ÄíÅ°ÀÇ °ª : " + cookie1.getValue() + "<BR>"); 
out.println(cookie2.getName()+ " ÄíÅ°ÀÇ °ª : " + cookie2.getValue() + "<BR><BR>"); 

String strCookie1 = URLDecoder.decode(cookie1.getValue());
String strCookie2 = URLDecoder.decode(cookie2.getValue());

out.println(cookie1.getName()+ " ÄíÅ°ÀÇ °ª : " + strCookie1 + "<BR>");
out.println(cookie2.getName()+ " ÄíÅ°ÀÇ °ª : " + strCookie2);
%>

</BODY>
</HTML>