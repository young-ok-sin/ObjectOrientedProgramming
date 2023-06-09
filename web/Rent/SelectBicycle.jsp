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
<%@ page import="BicycleManage.BicycleControll" %>
<%@ page import="BicycleManage.BicycleUsedHistory" %>
<%@ page import="BicycleManage.BicycleUsedHistoryController" %>
<%@ page import="BicycleManage.Bicycle" %>
<%@ page import="java.util.List" %>
<html>
<head>
    <title>선택된 자전거 조회</title>
</head>
<body>
<%
    List<Bicycle> list = null;
    try {
        String selectedOffice = request.getParameter("selectedOffice");
        if (selectedOffice != null && !selectedOffice.isEmpty()) {
            BicycleControll bicycleControll = new BicycleControll(); // ConnectMyDB 클래스의 인스턴스 생성

            list = bicycleControll.selectBicycleByOfficeID(selectedOffice); // 선택된 대여소에 대한 자전거 조회

            // 결과 출력
%>

<table>
    <tr>
        <th>Bicycle ID</th>
        <!-- 추가 필요한 열들 -->
    </tr>

    <% while (resultSet.next()) { %>
    <td>
        <input type="radio" name="selectedBicycle" value="<%= resultSet.getString("bicycleID") %>">
    </td>
    <td><%= resultSet.getString("bicycleID") %></td>
    <!-- 추가 필요한 열들 -->
    </tr>
    <% } %>
</table>
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

<form action="BicycleRentSuccess.jsp" onsubmit="return validateSelection();">
    <div class="button">
        <!--<input type="submit" value="cancel">-->
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
        document.getElementById("selectedBicycle").value = selectedBicycle.value;
        return true; // 폼 제출 계속
    }
</script>
</body>
</html>
