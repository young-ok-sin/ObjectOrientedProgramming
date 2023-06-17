<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="BicycleManage.BicycleUsedHistoryControl" %>
<%@ page import="BicycleManage.BicycleUsedHistory" %>
<html>
<head>
    <link rel="stylesheet" href="./BicycleUsedHistory.css">
    <title>대여소별 이용내역 조회</title>
</head>
<body>
<h1>대여소별 이용내역 조회</h1>

<%-- 대여소 이름과 이용횟수를 표시하는 테이블 --%>
<table>
    <tr>
        <th>대여소 이름</th>
        <th>이용 횟수</th>

</table>
<button onclick="history.back()">뒤로가기</button>
<button onclick="goToBicycleUsedHistoryDetails()">상세보기</button>
</body>
<script>
    function goToBicycleUsedHistoryDetails() {
        window.location.href = "BicycleUsedHistoryDetails.jsp";
    }
</script>
