<%@ page import="BicycleManage.BicycleControl" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="BicycleManage.BicycleUsedHistory" %>
<%@ page import="BicycleManage.BicycleUsedHistoryControl" %><%--
  Created by IntelliJ IDEA.
  User: lee so rim
  Date: 2023-06-07
  Time: 오후 10:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>등록완료!!</title>
</head>
<body>
<h>등록완료</h>
<%
    String selectedBicycle = request.getParameter("selectedBicycle");
    String selectedOffice = request.getParameter("selectedOffice");
    String member = (String)session.getAttribute("user_id");
    try {
        BicycleControl bicycleControl = new BicycleControl();
        BicycleUsedHistory bicycleUsedHistory = new BicycleUsedHistory();
        BicycleUsedHistoryControl bicycleUsedHistoryControl = new BicycleUsedHistoryControl();
        boolean bicycleStatus = true;
        bicycleControl.changeBicycleStatus(selectedBicycle,bicycleStatus);
        bicycleUsedHistory=bicycleUsedHistoryControl.createBicycleUsedHistory(selectedBicycle,selectedOffice,member);
        bicycleUsedHistoryControl.addHistory(bicycleUsedHistory.getBicycleID());
    } catch (SQLException e) {
        // SQLException 처리
        e.printStackTrace();
    } catch (ClassNotFoundException e) {
        // ClassNotFoundException 처리
        e.printStackTrace();
    }
    // 결과 출력
%>
</body>
</html>
