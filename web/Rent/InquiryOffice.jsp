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
<%@ page import="BicycleManage.RentalOfficeControl" %>
<html>
<head>
    <title>대여소 목록</title>
</head>
<body>
<%
    try {
        RentalOfficeControl myDB = new RentalOfficeControl();

        ResultSet resultSet = myDB.inquiryOffice();

        // 테이블로 결과 출력
%>
<form action="SelectBicycle.jsp" method="post" onsubmit="return validateSelection();">
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

    <div class="button" >
        <!--<input type="submit" value="cancel">-->
        <input type="submit" value="대여소 선택">
    </div>
</form>
<%
        myDB.getConnectMyDB().disConnectMyDB(); // DB 연결 해제
    } catch (SQLException e) {
        // SQLException 처리
        e.printStackTrace();
    } catch (ClassNotFoundException e) {
        // ClassNotFoundException 처리
        e.printStackTrace();
    }
%>

<script>
    function validateSelection() {
        var selectedOffice = document.querySelector('input[name="selectedOffice"]:checked');
        if (!selectedOffice) {
            alert("대여소를 선택해주세요.");
            return false; // 폼 제출 중지
        }
        return true; // 폼 제출 계속
    }
</script>
</body>
</html>