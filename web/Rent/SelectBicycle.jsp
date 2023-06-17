<%--
  Created by IntelliJ IDEA.
  User: lee so rim
  Date: 2023-06-07
  Time: 오후 5:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="JDBC.ConnectMyDB" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="jdk.nashorn.internal.runtime.RewriteException" %>
<%@ page import="BicycleManage.BicycleControl" %>
<%@ page import="BicycleManage.BicycleUsedHistory" %>
<%@ page import="BicycleManage.BicycleUsedHistoryControl" %>
<%@ page import="BicycleManage.Bicycle" %>
<%@ page import="java.util.List" %>
<html>
<head>
    <title>선택된 자전거 조회</title>
    <link rel="stylesheet" href="./SelectBicycle.css">
</head>
<jsp:include page="../MainHeader/MainHeader.jsp"></jsp:include>
<body>
<form action="BicycleRentSuccess.jsp" method="post" onsubmit="return validateSelection();">
    <%
        String member = (String)session.getAttribute("user_id");
        String selectedOffice = "";
        List<Bicycle> list = null;

        try {
            selectedOffice = request.getParameter("selectedOffice");
            if (selectedOffice != null && !selectedOffice.isEmpty()) {
                BicycleControl bicycleControl = new BicycleControl(); // ConnectMyDB 클래스의 인스턴스 생성
                list = bicycleControl.createDTO(selectedOffice); // 선택된 대여소에 대한 자전거 조회

                if (list.isEmpty()) {
    %>
    <script>
        window.onload = function() {
            alert("선택한 대여소에 대여 가능한 자전거가 없습니다.");
            window.location.href = "../Rent/BicycleRent.jsp"; // 대여 페이지로 이동
        };
    </script>
    <%
    } else {
    %>
    <fieldset>
        <legend>Select Bicycle</legend>
        <% for(int i = 0;i<list.size();i++) { %>
        <div class="selectContainer">
            <div class="bicycle">
                <img class="bicycle-logo" src="../img/bicycle_oos.png" alt="logo">
            </div>
            <div class="bicycleInfo">
            <input type="radio" name="selectedBicycle" value="<%= list.get(i).getBicycleID() %>">
            <label><%= list.get(i).getBicycleID() %></label>
            <div>
            <label>상태 : 대여가능</label>
            </div>
            </div>
        </div>
        <% } %>
    </fieldset>
    <%
                }
            }
        } catch (SQLException e) {
            // SQLException 처리
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            // ClassNotFoundException 처리
            e.printStackTrace();
        }
    %>
    <div class="button">
        <input type="submit" value="대여하기">
    </div>
</form>
<script>
    function validateSelection() {
        var selectedBicycle = document.querySelector('input[name="selectedBicycle"]:checked');
        if (!selectedBicycle) {
            alert("자전거를 선택해주세요.");
            return false; // 폼 제출 중지
        }
        return true; // 폼 제출 계속
    }
</script>
</body>
</html>