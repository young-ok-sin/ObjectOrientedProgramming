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
    <link rel="stylesheet" href="BicycleRegister.css">
    <title>자전거 등록</title>
    <script>
        var isDuplicate = false;
        function validateForm() {

            var rentalOfficeId = document.forms["registerForm"]["rent_id"].value;
            var bicycleId = document.forms["registerForm"]["bicycle_id"].value;

            if (rentalOfficeId == "" || bicycleId == "" ) {
                alert("모든 항목을 입력하세요.");
                return false;
            }
            return true;
        }
    </script>
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
            <form name = "registerForm" action="DoRegisterBicycle.jsp" class="content-body" onsubmit="return validateForm()" method="post">
                <div class = "input-form">
                    <div class = "bicycle_Id">
                        <input type = "text" name = "bicycle_id" placeholder="신규 자전거 ID">
                    </div>
                    <div class = "rentalOffcie_Id">
                        <input type = "text" name = "rent_id" placeholder="해당 자전거의 대여소 ID">
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
