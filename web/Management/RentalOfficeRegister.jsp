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
    <link rel="stylesheet" href="../../Management/RentalOfficeRegister.css">

    <title>대여소 등록</title>
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
            <form action="DoRegisterRentalOffice.jsp" class="content-body" method="post">
                <div class = "input-form">
                    <div class = "rentalOfficeId">
                        <input type = "text" name = "rentalOffice_id" placeholder="신규 대여소 ID를 입력하세요.">
                    </div>
                    <div class = "rentalOfficeName">
                        <input type = "text" name = "rentaloffice_name" placeholder="신규 대여소 이름를 입력하세요">
                    </div>
                    <div class = "rentalOfficePos">
                        <input type = "text" name = "rentaloffice_pos" placeholder="해당 대여소의 위치를 입력하세요">
                    </div>
                    <div class = "rentalOfficeMax">
                        <input type = "text" name = "rentaloffice_max" placeholder="최대 자전거 수를 입력하세요">
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
