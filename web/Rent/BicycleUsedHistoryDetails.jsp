<%--
  Created by IntelliJ IDEA.
  User: lee so rim
  Date: 2023-06-09
  Time: 오후 7:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="BicycleManage.BicycleUsedHistoryControl" %>
<%@ page import="BicycleManage.BicycleUsedHistory" %>
<html>
<head>
    <title>상세보기</title>
</head>
<body>
<%
  List<BicycleUsedHistory> list = null;
    try {
      BicycleUsedHistoryControl bicycleUsedHistoryControl = new BicycleUsedHistoryControl();
      list = bicycleUsedHistoryControl.selectAllOperationallStatisticsByBicycle();

%>
<table>
  <tr>
    <th>상세보기</th>
    <!-- 추가 필요한 열들 -->
  </tr>

  <% for(int i = 0;i<list.size();i++) { %>
  <tr>
    <td> 사용자 번호 <%=list.get(i).getUsedpk()%></td>
    <td> 자전거 ID <%=list.get(i).getBicycleID() %></td>
    <td> 대여소 ID <%= list.get(i).getFk_office() %></td>
    <td> 회원 ID <%= list.get(i).getMemberID() %></td>
    <td> 사용 거리 <%= list.get(i).getUsedDistance() %></td>
    <td> 사용 날짜 <%= list.get(i).getBicycleID() %></td>
    <td> 반납 상태 <%=list.get(i).getIsRent()%></td>
    <td> 반납 날짜 <%= list.get(i).getAlterTime() %></td>
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
