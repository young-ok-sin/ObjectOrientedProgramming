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
<jsp:include page="../MainHeader/MainHeader.jsp"></jsp:include>
<%
    String member = (String)session.getAttribute("user_id");
    List<BicycleUsedHistory> list = null;
    try {
        BicycleUsedHistoryControl bicycleUsedHistoryControl = new  BicycleUsedHistoryControl(); // ConnectMyDB 클래스의 인스턴스 생성
        list = bicycleUsedHistoryControl.officeCount(member);

        // 테이블로 결과 출력
%>
<div class="bicycle">
    <img class="bicycle-logo" src="../img/bicycle_oos.png" alt="logo">
</div>
<form action="BicycleUsedHistoryDetails.jsp" method="post" onsubmit="return validateSelection();">
<h1>이용내역</h1>
        <% for(int i = 0;i<list.size();i++) { %>
    <fieldset>
        <div>
            <label>대여소 이름</label>
            <label><%= list.get(i).getFk_office() %></label>
        </div>
        <div>
            <label>이용 횟수</label>
            <label><%= list.get(i).getOfficeCount()%></label>
        </div>
    </fieldset>
        <% } %>
<%

    } catch (SQLException e) {
        // SQLException 처리
        e.printStackTrace();
    } catch (ClassNotFoundException e) {
        // ClassNotFoundException 처리
        e.printStackTrace();
    }

%>
<button onclick="goBack()">돌아가기</button>
<button onclick="goToBicycleUsedHistoryDetails()">자세히 보기</button>
</body>
<script>
    function goToBicycleUsedHistoryDetails() {
        window.location.href = "BicycleUsedHistoryDetails.jsp";
    }
    function goBack() {
        window.location.href = "BicycleUsedHistory.jsp";
    }
</script>
