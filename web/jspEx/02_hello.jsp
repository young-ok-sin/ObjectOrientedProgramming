<%@ page language="java" contentType="text/html;charset=euc-kr" %>
<%@ page import="java.util.*" %>
<HTML>
<HEAD><TITLE> Hello JSP! </TITLE></HEAD>
<BODY>
<%! int a = 1900; %> <!--jsp 선언-->
<jsp:useBean id="clock" class="java.util.Date"/> <!--jsp usebean에 접근/ 이거 왠만하면 안씀-->
	<ul>
		<li>Year:  <%= clock.getYear() + a %> <!--리턴되는 값을 사용-->
		<li>Month: <%= clock.getMonth() %> <!--리턴되는 값을 사용-->
		<li>Day:   ${ clock.date } <!--객체 값 가져와서 사용-->
	</ul>
<%
	 String hello = "hello JSP";
%>
	<h1><%=hello%></h1>
</BODY>
</HTML>
