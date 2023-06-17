<%@ page import="BicycleManage.RentalOfficeControl" %>
<%@ page import="java.sql.SQLException" %><%--
  Created by IntelliJ IDEA.
  User: duddhr
  Date: 2023-06-14
  Time: 오후 10:30
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
    String rentalOffice_Id = request.getParameter("rentalOffice_id");
    String rentalOffice_Name = request.getParameter("rentaloffice_name");
    String location = request.getParameter("rentaloffice_pos");
    String maximumBicycleCntStr = request.getParameter("rentaloffice_max");

    int maximumBicycleCnt = 0;
    maximumBicycleCnt = Integer.parseInt(maximumBicycleCntStr);

    String url = "";
    if (DoRegisterRentalOffice(rentalOffice_Id, rentalOffice_Name, location, maximumBicycleCnt)) {
        url = "../ResultPage/Success.jsp";
    } else {
        url = "../ResultPage/Fail.jsp";
    }
    response.sendRedirect(url);
%>
</body>
</html>
<%!
    private boolean DoRegisterRentalOffice(String rentalOffice_Id, String rentalOffice_Name, String location, int maximumBicycleCnt) throws SQLException, ClassNotFoundException {
        RentalOfficeControl rental = new RentalOfficeControl();
        return rental.insertOffice(rental.createRentalOffice(rentalOffice_Id, rentalOffice_Name, location, maximumBicycleCnt));
    }
%>
