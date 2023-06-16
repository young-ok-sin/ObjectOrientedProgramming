<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="./RentalOfficeRegister.css">

    <title>대여소 등록</title>
    <script>
        var isDuplicate = false;
        function validateForm() {

            var rentalOfficeName = document.forms["registerForm"]["rentaloffice_name"].value;
            var rentalOfficeLocation = document.forms["registerForm"]["rentaloffice_pos"].value;
            var rentalOfficeId = document.forms["registerForm"]["rentalOffice_id"].value;
            var rentalofficeMax = document.forms["registerForm"]["rentaloffice_max"].value;

            if (rentalOfficeName == "" || rentalOfficeLocation == "" || rentalOfficeId == "" || rentalofficeMax == "") {
                alert("모든 항목을 입력하세요.");
                return false;
            }
            if(rentalofficeMax < 0 ){
                alert("최대 자전거 수는 0 또는 양수 값만 설정이 가능합니다.");
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
        <form name="registerForm" action="DoRegisterRentalOffice.jsp" class="content-body" onsubmit="return validateForm()" method="post">
            <div class = "input-form">
                <div class = "rentalOfficeId">
                    <input type = "text" name = "rentalOffice_id" placeholder="신규 대여소 ID를 입력하세요.">
                </div>
                <div class = "rentalOfficeName">
                    <input type = "text" name = "rentaloffice_name" placeholder="신규 대여소 이름를 입력하세요">
                </div>
                <div class = "rentalOfficePos">
                    <input type = "text" name = "rentaloffice_pos" placeholder="대여소의 위치를 입력하세요">
                </div>
                <div class = "rentalOfficeMax">
                    <input type = "text" name = "rentaloffice_max" placeholder="최대 자전거 수를 입력하세요">
                </div>
                <div class = "button">
                    <button type="submit" class="register_btn"> 등록
                    </button>
                </div>
            </div>
        </form>
    </div>
</div>

</body>
</html>
