<%@ page language="java" contentType="text/html; charset=euc-kr" %>

<HTML>
<HEAD>
<TITLE> request 객체 </TITLE>
</HEAD>
<BODY>

<Form Action = "/web/jspEx/16_request_3.jsp" Method = "post"> <!--request_3.jsp에 값을 전달해줌-->

아이디   : <Input Type = "Text" Name = "strID"> <BR>
비밀번호 : <Input Type = "PassWord" Name = "strPwd"> <BR><BR>

<Input Type = "Submit" Value = "로그인">
<Input Type = "Reset" Value = "취소">
</Form>

</BODY>
</HTML>
