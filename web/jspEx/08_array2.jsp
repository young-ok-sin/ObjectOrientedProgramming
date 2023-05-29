<%@ page language="java" contentType="text/html;charset=euc-kr" %>

<HTML>
<HEAD>
<TITLE> 다차원 배열 </TITLE>
</HEAD>
<BODY>

<%
String[][] strMember = new String[3][3];

strMember[0][0] = new String("홍길동");
strMember[1][0] = new String("19");
strMember[2][0] = new String("hong@jsp.com");

strMember[0][1] = new String("박길동");
strMember[1][1] = new String("27");
strMember[2][1] = new String("park@jsp.com");

strMember[0][2] = new String("이길동");
strMember[1][2] = new String("22");
strMember[2][2] = new String("lee@jsp.co.kr");

out.println(strMember[0][0] + " " + strMember[1][0] + " " +  strMember[2][0] + "<BR>");
out.println(strMember[0][1] + " " +  strMember[1][1] + " " +  strMember[2][1] + "<BR>");
out.println(strMember[0][2] + " " +  strMember[1][2] + " " +  strMember[2][2] + "<BR>");
%>

</BODY>
</HTML>




