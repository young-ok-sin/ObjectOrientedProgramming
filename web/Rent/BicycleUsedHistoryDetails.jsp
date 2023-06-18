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
  <link rel="stylesheet" href="./BicycleUsedHistoryDetails.css">
</head>
<jsp:include page="../MainHeader/MainHeader.jsp"></jsp:include>
<body>
<%
  String member = (String)session.getAttribute("user_id");
  List<BicycleUsedHistory> list = null;
    try {
      BicycleUsedHistoryControl bicycleUsedHistoryControl = new BicycleUsedHistoryControl();
      list = bicycleUsedHistoryControl.selectAllOperationallStatisticsByBicycle(member);

%>
<% for(int i = 0;i<list.size();i++) { %>
<fieldset>
  <legend>대여소이름=<%= list.get(i).getFk_office() %></legend>
  <div>
    <label>이용 날짜</label>
    <label><%= list.get(i).getUsedDate() %></label>
  </div>
  <div>
    <label>이용 거리</label>
    <label><%=list.get(i).getUsedDistance() %></label>
  </div>
  <div>
    <label>자전거 번호</label>
    <label><%=list.get(i).getBicycleID() %></label>
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
<button onclick="history.back()">돌아가기</button>
</body>
</html>
