<%--
  Created by IntelliJ IDEA.
  User: lee so rim
  Date: 2023-06-09
  Time: 오후 7:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="BicycleManage.BicycleUsedHistoryControl" %>
<%@ page import="BicycleManage.BicycleUsedHistoryControl" %>
<html>
<head>
    <title>자전거 이용 현황 조회</title>
</head>
<body>
<%
  try {
    BicycleUsedHistoryControl bicycleUsedHistoryControl = new BicycleUsedHistoryControl();

    ResultSet resultSet = bicycleUsedHistoryControl.selectAllOperationallStatisticsByBicycle();
     // 테이블로 결과 출력
%>
<table>
  <tr>
    <th>BicycleUsedHistory</th>
    <!-- 추가 필요한 열들 -->
  </tr>

  <% while (resultSet.next()) { %>
  <tr>
    <td> 사용자 번호 <%= resultSet.getString("usedpk") %></td>
    <td> 자전거 ID <%= resultSet.getString("bicycleID") %></td>
    <td> 대여소 ID <%= resultSet.getString("fk_officeID") %></td>
    <td> 회원 ID <%= resultSet.getString("memberID") %></td>
    <td> 사용 거리 <%= resultSet.getString("usedDistance") %></td>
    <td> 사용 날짜 <%= resultSet.getString("usedDate") %></td>
    <td> 반납 상태 <%= resultSet.getString("isRent") %></td>
    <td> 반납 날짜 <%= resultSet.getString("alterTime") %></td>
  </tr>
  <% } %>
</table>
<%
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
