<%@ page language="java" contentType="text/html;charset=euc-kr" %>

<HTML>
<HEAD>
<TITLE> 배열 </TITLE>
</HEAD>
<BODY>

<%-- 배열 예제 --%>
<%
//배열 선언
String[] strMember = new String[3];

//각 배열 공간에 문자열 저장
strMember[0] = new String("홍길동");
strMember[1] = new String("박길동");
//strMember[2] = new String("이길동");

out.println(strMember[0] + "<BR>");
out.println(strMember[1] + "<BR>");
out.println(strMember[2] + "<BR>");
%>

</BODY>
</HTML>




