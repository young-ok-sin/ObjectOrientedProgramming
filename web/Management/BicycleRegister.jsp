<%--
  Created by IntelliJ IDEA.
  User: duddhr
  Date: 2023-06-10
  Time: 오후 7:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="../../Management/BicycleRegister.css">
    <title>자전거 등록</title>
</head>
<body>
    <jsp:include page="../MainHeader/MainHeader.jsp"></jsp:include>
    <div class="content">
        <div class="content-title">
            <div class="logo">
                <img src="../img/bicycle_oos.png" alt="자전거.png"/>
            </div>
            <div class="title">
                기장군 공영자전거 무인대여 시스템
            </div>
            <form action="DoRegisterBicycle.jsp" class="content-body" method="post">
                <div class = "input-form">
                    <div class = "bicycle_Id">
                        <input type = "text" name = "bicycle_id" placeholder="신규 자전거 ID를 입력하세요.">
                    </div>
                    <div class = "rentalOffcie_Id">
                        <input type = "text" name = "rent_id" placeholder="해당 자전거가 속할 대여소 ID를 입력하세요">
                    </div>
                    <div class = "button">
                        <button class = "register_btn"> 등록
                        </button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</body>
</html>
