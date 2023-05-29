<%@ page contentType = "text/html; charset=euc-kr" %>
<%@ page import = "java.net.URLDecoder" %>

<HTML>
<HEAD>
<TITLE> 쿠키 </TITLE>
</HEAD>
<BODY>

<%
Cookie[] cookies = request.getCookies();
if(cookies != null){
	for(int i=0; i<cookies.length; i++){
		if(cookies[i].getName().equals("Name")){
		String strCookie = URLDecoder.decode(cookies[i].getValue());
		out.println(cookies[i].getName()+ " 쿠키의 값 : " + strCookie + "<BR>");
		}
		if(cookies[i].getName().equals("Job")){
		String strCookie = URLDecoder.decode(cookies[i].getValue());
		out.println(cookies[i].getName()+ " 쿠키의 값 : " + strCookie);
		}
	}
}else{
	out.println("쿠키가 존재하지 않습니다.");
}
%>

</BODY>
</HTML>
