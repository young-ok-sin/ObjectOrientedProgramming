<%@ page contentType = "text/html; charset=euc-kr" %>
<%@ page import = "java.net.URLEncoder" %>

<HTML>
<HEAD>
<TITLE> ÄíÅ° </TITLE>
</HEAD>
<BODY>

<%
Cookie cookie = new Cookie("Name", URLEncoder.encode("È«±æµ¿"));
response.addCookie(cookie);

out.print("Name : " + cookie.getName() + "<BR>");   
out.print("Vaule : " + cookie.getValue() + "<BR>");
out.print("Domain : " + cookie.getDomain() + "<BR>");
out.print("MaxAge : " + cookie.getMaxAge() + "<BR>");
out.print("Path : " + cookie.getPath() + "<BR>");        
out.print("Secure : " + cookie.getSecure() + "<BR>");            
out.print("Comment : " + cookie.getComment() + "<BR>"); 
out.print("Version : " + cookie.getVersion());                
%>

</BODY>
</HTML>