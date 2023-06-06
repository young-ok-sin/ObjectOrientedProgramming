<%--
  Created by IntelliJ IDEA.
  User: qarkc
  Date: 2023-05-29(029)
  Time: 오후 4:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="JDBC.ConnectMyDB" %>
<%@ page import="java.sql.Date" %>
<!DOCTYPE html>
<html>
<head>
    <title>메인페이지</title>
</head>
<body>
<% ConnectMyDB connectMyDB = new ConnectMyDB();
    connectMyDB.insertNotice(new Date(System.currentTimeMillis()),"chanjin5","testNotice1","content4",0);
    connectMyDB.disConnectMyDB();
    out.println("jsp import 테스트 및 DB 연결 문제 해결"); //git 내용 수정 및 pr 테스트 용도
%>
<form action="RegisterPage.jsp">
    <input type="submit"/>
    메인페이지
</form>
마스터 브랜치 바꿈!!
</body>
</html>
