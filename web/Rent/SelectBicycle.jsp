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
<%@ page import="Entity.BicycleControll" %>
selectBicycleByOfficeID(String oID)
<html>
<head>
    <title>선택된 자전거 조회</title>
</head>
<body>
<%
    try {
        String selectedOffice = request.getParameter("selectedOffice");
        if (selectedOffice != null && !selectedOffice.isEmpty()) {
            BicycleControll myDB = new BicycleControll(); // ConnectMyDB 클래스의 인스턴스 생성

            ResultSet resultSet = myDB.selectBicycleByOfficeID(selectedOffice); // 선택된 대여소에 대한 자전거 조회

            // 결과 출력
%>
<form action="BicycleRent.jsp" class="content-body" method="post">
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
           myDB.getConnectMyDB().disConnectMyDB(); // DB 연결 해제
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
        <!--<input type="submit" value="cancel">-->
        <input type="submit" value="대여하기">
    </div>
</form>
</body>
</html>
