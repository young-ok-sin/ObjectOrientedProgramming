<%--
  Created by IntelliJ IDEA.
  User: duddhr
  Date: 2023-06-10
  Time: 오후 7:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="JDBC.ConnectMyDB" %>
<%@ page import="java.sql.SQLException" %>

<html>
<head>
    <link rel="stylesheet" href="../MainHeader/MainHeader.css">
    <link rel="stylesheet" href="ChoosePage.css">
    <title>등록 선택</title>
</head>
<body>
<jsp:include page="../MainHeader/MainHeader.jsp"></jsp:include>
    <div class = "content">
        <div class="content-title">
            <div class="logo">
                <img src="../img/bicycle_oos.png" alt="자전거.png"/>
            </div>
            <div class="title">
                기장군 공영자전거 무인대여 시스템
            </div>
        </div>
        <form action = "BicycleRegister.jsp" class = "content-body" method="post">
            <div class = "btn">
                <input type = "submit" value = "자전거 등록하기">
            </div>
        </form>
        <form action = "RentalOfficeRegister.jsp" class = "content-body" method="post">
            <div class = "btn">
                <input type = "submit" value = "대여소 등록하기">
            </div>
        </form>
    </div>
</body>
</html>
