<%--
  Created by IntelliJ IDEA.
  User: lee so rim
  Date: 2023-06-07
  Time: 오후 12:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<%@ page import="JDBC.ConnectMyDB" %>
<%@ page import="java.sql.Date" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="BicycleManage.RentalOfficeControl" %>
<%@ page import="BicycleManage.RentalOffice" %>
<%@ page import="java.util.List" %>
<html>
<head>
    <title>대여소 목록</title>
    <link rel="stylesheet" href="./InquiryOffice.css">
</head>
<jsp:include page="../MainHeader/MainHeader.jsp"></jsp:include>
<body>
<%
    List<RentalOffice> list = null;
    try {
        RentalOfficeControl rentalOfficeControl = new  RentalOfficeControl();
        list = rentalOfficeControl.inquiryOffice();

        if (list.isEmpty()) {
%>
<script>
    window.onload = function() {
    alert("등록된 대여소가 없습니다.");
    window.location.href = "../Rent/BicycleRent.jsp";// 대여 페이지로 이동
    };
</script>
<%
} else {
%>
<form action="SelectBicycle.jsp" method="post" onsubmit="return validateSelection();">
    <fieldset>
        <legend>Select Office</legend>
        <% for(int i = 0; i < list.size(); i++) { %>
        <div class="selectContainer">
            <input type="radio" name="selectedOffice" value="<%= list.get(i).getOfficeID() %>">
            <label><%= list.get(i).getOfficeID() %></label>
        </div>
        <% } %>
    </fieldset>

    <div class="button">
        <input type="submit" value="대여소 선택">
    </div>
</form>
<%
        }
    } catch (SQLException e) {
        e.printStackTrace();
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    }
%>

<script>
    function validateSelection() {
        var selectedOffice = document.querySelector('input[name="selectedOffice"]:checked');
        if (!selectedOffice) {
            alert("대여소를 선택해주세요.");
            return false;
        }
        return true;
    }
</script>
</body>
</html>