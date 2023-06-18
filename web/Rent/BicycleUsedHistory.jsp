<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="BicycleManage.BicycleUsedHistoryControl" %>
<%@ page import="BicycleManage.BicycleUsedHistory" %>
<%@ page import="BicycleManage.RentalOfficeControl" %>
<%@ page import="BicycleManage.RentalOffice" %>
<html>
<head>
    <link rel="stylesheet" href="./BicycleUsedHistory.css">
    <title>대여소별 이용내역 조회</title>
</head>
<jsp:include page="../MainHeader/MainHeader.jsp"></jsp:include>
<body>
<%
    String member = (String)session.getAttribute("user_id");
    List<BicycleUsedHistory> list = null;
    List<RentalOffice> rentalOfficeList = null;
    try {
        RentalOfficeControl rentalOfficeControl = new  RentalOfficeControl();
        BicycleUsedHistoryControl bicycleUsedHistoryControl = new  BicycleUsedHistoryControl(); // ConnectMyDB 클래스의 인스턴스 생성
        list = bicycleUsedHistoryControl.officeCount(member);
        rentalOfficeList = rentalOfficeControl.inquiryOffice();
        if (rentalOfficeList.isEmpty()) {
%>
<script>
    alert("등록된 대여소가 없는 이유로 회원님의 대여소 이용내역이 없습니다.");
    window.location.href = "../Rent/BicycleRent.jsp";// 대여 페이지로 이동
</script>
<%
} else if(list.isEmpty()){
%>
<script>
    alert("회원님이 이용한 대여소가 없습니다.");
    window.location.href = "../Rent/BicycleRent.jsp";// 대여 페이지로 이동
</script>
<%
} else {
%>
<div class="bicycle">
    <img class="bicycle-logo" src="../img/bicycle_oos.png" alt="logo">
</div>
<form action="BicycleUsedHistoryDetails.jsp" method="post" onsubmit="return validateSelection();">
<h1>이용내역</h1>
        <% for(int i = 0;i<list.size();i++) { %>
    <fieldset>
        <div class = "field-office">
            <label>대여소 이름: </label>
            <label><%= list.get(i).getFk_office() %></label>
        </div>
        <br>
        <div class = "field-num">
            <label>이용 횟수: </label>
            <label><%= list.get(i).getOfficeCount()%></label>
        </div>
    </fieldset>
        <% } %>
<%
        }
    } catch (SQLException e) {
        // SQLException 처리
        e.printStackTrace();
    } catch (ClassNotFoundException e) {
        // ClassNotFoundException 처리
        e.printStackTrace();
    }

%>
</form>
<button onclick="location.href='BicycleRent.jsp'">돌아가기</button>
<button onclick="goToBicycleUsedHistoryDetails()">자세히 보기</button>
</body>
<script>
    function goToBicycleUsedHistoryDetails() {
        window.location.href = "BicycleUsedHistoryDetails.jsp";
    }
</script>
