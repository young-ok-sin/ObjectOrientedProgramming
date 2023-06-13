<%--
  Created by IntelliJ IDEA.
  User: lks99
  Date: 2023-06-07
  Time: 오전 4:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="./UserInquiry.css?after">
    <link rel="stylesheet" href="../MainHeader/MainHeader.css">
    <title>회원조회</title>
</head>
<jsp:include page="../MainHeader/MainHeader.jsp"></jsp:include>
<body>
<%
    String id = (String) request.getAttribute("id");
    String name = (String) request.getAttribute("name");
    int age = (int) request.getAttribute("age");
    String date = (String) request.getAttribute("date");
    String phoneNumber = (String) request.getAttribute("phoneNumber");
%>
<div class="content">
    <div class="content-title">
        <div class="logo">
            <img src="../img/bicycle_oos.png" alt="자전거.png" />
        </div>
        <div class="title">
                기장군 공영자전거 무인대여 시스템
        </div>
    </div>
    <div class="content-body">
        <div class="content-name">
            <div class="icon">
                <img src="../Icon/info.svg" />
            </div>
            <div class="name">
                상세정보
            </div>
        </div>
        <div class="inquiry-form">
            <div class="inquiry-field" id="id-field">
                <div class="content-icon">
                    <img src="../Icon/id.svg" />
                </div>
                <div class="indicate-field">
                    ID:
                </div>
                <div class="inquiry-show-field">
                    <%=id%>
                </div>
            </div>
            <div class="inquiry-field" id="name-field">
                <div class="content-icon">
                    <img src="../Icon/name.svg" />
                </div>
                <div class="indicate-field">
                    Name:
                </div>
                <div class="inquiry-show-field">
                    <%=name%>
                </div>
            </div>
            <div class="inquiry-field" id="age-field">
                <div class="content-icon">
                    <img src="../Icon/age.svg" />
                </div>
                <div class="indicate-field">
                    Age:
                </div>
                <div class="inquiry-show-field">
                    <%=age%>
                </div>
            </div>
            <div class="inquiry-field" id="date-field">
                <div class="content-icon">
                    <img src="../Icon/birth.svg" />
                </div>
                <div class="indicate-field">
                    Birth:
                </div>
                <div class="inquiry-show-field">
                    <%=date%>
                </div>
            </div>
            <div class="inquiry-field" id="phone-number-filed">
                <div class="content-icon">
                    <img src="../Icon/contact.svg" />
                </div>
                <div class="indicate-field">
                    Contact:
                </div>
                <div class="inquiry-show-field">
                    <%=phoneNumber%>
                </div>
            </div>
        </div>
        <div class="button">
            <div class="cancel-btn" onclick="location.href='../MainPage/MainPage.jsp';">
                cancel
            </div>
        </div>
    </div>
</div>
</body>
</html>
