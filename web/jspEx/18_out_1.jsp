<%@ page language="java" contentType="text/html; charset=euc-kr" %>

<HTML>
<HEAD>
<TITLE> out °´Ã¼ </TITLE>
</HEAD>
<BODY>

<%
int sum1 = 0;
int sum2 = 0;

for(int i=1; i<=10; i++){
	sum1 += i;
	out.print(sum1);
}
%>
<BR>
<%
for(int j=1; j<=10; j++){
	sum2 += j;
	out.println(sum2);
}
%>

</BODY>
</HTML>
