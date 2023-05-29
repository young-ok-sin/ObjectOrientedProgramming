<%@ page language="java" contentType="text/html; charset=euc-kr" %>

<HTML>
<HEAD>
<TITLE> response 객체 </TITLE>
</HEAD>
<BODY>

JSP 환경 설정을 위한 다운로드 페이지 입니다.

<form action = "/jsp/response_2.jsp" method = "get">

<select name = "download">
	<option selected value="1"> JDK </option>
	<option value="2"> 톰캣 </option>
	<option value="3"> EditPlus </option>
	<option value="4"> UltraEdit-32</option>
</select>

<input type=submit value="이동">

</form>

</BODY>
</HTML>
