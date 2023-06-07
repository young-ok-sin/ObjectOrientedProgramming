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
    <link rel="stylesheet" href="MainPage.css">
    <link rel="stylesheet" href="./MainHeader/MainHeader.css">
    <title>MainPage</title>
</head>
<body>

<%--<% ConnectMyDB connectMyDB = new ConnectMyDB();--%>
<%--    connectMyDB.disConnectMyDB();--%>
<%--%>--%>
<jsp:include page="./MainHeader/MainHeader.jsp"></jsp:include>
<div class="bicycle">
    <img class="bicycle-logo" src="logo/bicycle_oos.png" alt="logo">
</div>
<div class="menu">
    <a class = "register" href="./Register/RegisterPage.jsp">회원 관리</a> <!--임시로 적용-->
    <a class = "rent" href="">대여 관리</a>
    <a class = "notice" href="">공지 관리</a>
    <a class = "manage" href="">운영 관리</a>
</div>

</body>
</html>
