<%--
  Created by IntelliJ IDEA.
  User: lee so rim
  Date: 2023-06-07
  Time: 오후 12:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="JDBC.ConnectMyDB" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="BicycleManage.BicycleControl" %>
<%@ page import="BicycleManage.BicycleUsedHistoryControl" %>
<html>
<head>
    <link rel="stylesheet" href="./BicycleRent.css">
    <title>자전거 대여</title>
</head>
<body>
<jsp:include page="../MainHeader/MainHeader.jsp"></jsp:include>
<div class="content">
    <div class="content-title">
        <div class="logo">
            <img class="bicycle-logo" src="../img/bicycle_oos.png" alt="logo">
        </div>
        <div class="title">
         기장군 공영자전거 무인대여 시스템
        </div>
    </div>
    <form action="InquiryOffice.jsp" class="content-body" method="post">
        <div class="button">
            <!--<input type="submit" value="cancel">-->
            <input type="submit" value="자전거 대여하기">
        </div>
    </form>
    <form action="BicycleUsedHistory.jsp" class="content-body" method="post">
        <div class="button">
            <!--<input type="submit" value="cancel">-->
            <input type="submit" value="자전거 이용 현황 조회">
        </div>
    </form>
</div>


</body>
</html>
