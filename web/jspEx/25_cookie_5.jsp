<%@ page contentType = "text/html; charset=euc-kr" %>
<%@ page import = "java.net.URLEncoder" %>

<HTML>
<HEAD>
<TITLE> 쿠키 </TITLE>
</HEAD>
<BODY>

<%
Cookie[] cookies = request.getCookies();
if(cookies != null){
	for(int i=0; i<cookies.length; i++){
		if (cookies[i].getName().equals("Name")){
			Cookie cookie = new Cookie("Name", "");
			cookie.setMaxAge(0);
			response.addCookie(cookie);
		}
	}
}
out.println("쿠키를 삭제하였습니다..");
%>

</BODY>
</HTML>