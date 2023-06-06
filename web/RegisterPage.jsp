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
    <title>회원가입</title>
</head>
<body>
    <div class="content">
        <div class="content-title">
            <div class="logo">

            </div>
            <div class="title">
                기장군 공영자전거 무인대여 시스템
            </div>
        </div>
        <form action="DoRegister.jsp" class="content-body" method="post">
            <div class="input-form">
                <input type="text" name="id" placeholder="ID">
                <input type="password" name="password" placeholder="PW">
                <input type="text" name="phoneNumber" placeholder="PhoneNumber">
                <input type="text" name="age" placeholder="Age">
                <input type="text" name="date" placeholder="YYYY-MM-DD">
            </div>
            <div class="button">
                <!--<input type="submit" value="cancel">-->
                <input type="submit" value="register">
            </div>
        </form>
    </div>


</body>
</html>
