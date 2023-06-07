<%--
  Created by IntelliJ IDEA.
  User: qarkc
  Date: 2023-05-29(029)
  Time: 오후 4:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="RegisterPage.css">
    <link rel="stylesheet" href="../MainHeader/MainHeader.css">
    <title>회원가입</title>
</head>
<body>
    <jsp:include page="../MainHeader/MainHeader.jsp"></jsp:include>
    <div class="content">
        <div class="content-title">
            <div class="logo">
                <img src="" alt="자전거.png"/>
            </div>
            <div class="title">
                <div>
                    기장군 공영자전거
                </div>
                <div>
                    무인대여 시스템
                </div>
            </div>
        </div>
        <form action="DoRegister.jsp" class="content-body" method="post">
            <div class="input-form">
                <div class="id-field">
                    <input type="text" name="id" placeholder="ID">
                </div>
                <div class="pw-field">
                    <input type="password" name="password" placeholder="PW">
                </div>
                <div class="name-field">
                    <input type="text" name="name" placeholder="홍길동">
                </div>
                <div class="phone-number-filed">
                    <input type="text" name="phoneNumber" placeholder="PhoneNumber">
                </div>
                <div class="age-field">
                    <input type="text" name="age" placeholder="Age">
                </div>
                <div class="date-field">
                    <input type="text" name="date" placeholder="YYYY-MM-DD">
                </div>
            </div>
            <div class="button">
                <div class="cancel-btn" onclick="location.href='MainPage.jsp';">
                    cancel
                </div>
                <button class="register-btn"> register </button>
            </div>
        </form>
    </div>
</body>
</html>
