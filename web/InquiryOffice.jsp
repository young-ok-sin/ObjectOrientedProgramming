<%--
  Created by IntelliJ IDEA.
  User: lee so rim
  Date: 2023-06-07
  Time: 오후 12:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="JDBC.ConnectMyDB" %>
<%@ page import="java.sql.Date" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="Entity.OfficeDAO" %>
<html>
<head>
    <title>대여소 목록</title>
</head>
<body>
<%
    try {
        OfficeDAO myDB = new OfficeDAO();

        ResultSet resultSet = myDB.inquiryOffice();

        // 테이블로 결과 출력
%>
<form action="SelectBicycle.jsp" method="post">
    <table>
        <tr>
            <th>Select</th>
            <th>Office</th>
            <!-- 추가 필요한 열들 -->
        </tr>

        <% while (resultSet.next()) { %>
        <tr>
            <td>
                <input type="radio" name="selectedOffice" value="<%= resultSet.getString("officeID") %>">
            </td>
            <td><%= resultSet.getString("officeID") %></td>
            <!-- 추가 필요한 열들 -->
        </tr>
        <% } %>
    </table>

    <div class="button">
        <!--<input type="submit" value="cancel">-->
        <input type="submit" value="대여소 선택">
    </div>
</form>
<%
        myDB.disConnectMyDB(); // DB 연결 해제
    } catch (SQLException e) {
        // SQLException 처리
        e.printStackTrace();
    } catch (ClassNotFoundException e) {
        // ClassNotFoundException 처리
        e.printStackTrace();
    }
%>
</body>
</html>