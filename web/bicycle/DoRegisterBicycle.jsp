<%@ page import="java.sql.SQLException" %>
<%@ page import="BicycleManage.BicycleControl" %><%--
  Created by IntelliJ IDEA.
  User: duddhr
  Date: 2023-06-14
  Time: 오후 8:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    String bicycle_Id = request.getParameter("bicycle_id");
    String rentalOffcie_Id = request.getParameter("rent_id");
    String url = "";
    if(DoRegisterBicycle(bicycle_Id, rentalOffcie_Id)) {
        url = "../ResultPage/Success.jsp";
    }
    else {
        url = "../ResultPage/Fail.jsp";
    }
    response.sendRedirect(url);
%>
</body>
</html>
<%!
    private boolean DoRegisterBicycle(String bicycle_Id, String rentalOffcie_Id) throws SQLException, ClassNotFoundException {
        BicycleControl bi = new BicycleControl();
        return bi.insertBicycle(bi.createBicycle(bicycle_Id,rentalOffcie_Id));
    }
%>
