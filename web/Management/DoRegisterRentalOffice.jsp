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
  String location= request.getParameter("rentaloffice_pos");
  String maximumBicycleCntStr = request.getParameter("rentaloffice_max");
  int maximumBicycleCnt = 0;
  if (maximumBicycleCntStr != null && !maximumBicycleCntStr.trim().isEmpty()) {
    maximumBicycleCnt = Integer.parseInt(maximumBicycleCntStr);
  } else {
    System.out.println("0보다 큰 정수값을 입력하세요.");
  }
  String url = "";
  if(DoRegisterRentalOffice(rentalOffice_Id, rentalOffice_Name,location,maximumBicycleCnt)) {
    url = "../ResultPage/Success.jsp";
  }
  else {
    url = "../ResultPage/Fail.jsp";
  }
%>
<jsp:forward page="<%= url %>"></jsp:forward>
</body>
</html>
<%!
  private boolean DoRegisterRentalOffice(String rentalOffice_Id, String rentalOffice_Name, String location, int maximumBicycleCnt) throws SQLException, ClassNotFoundException {
    RentalOfficeControl rental = new RentalOfficeControl();
    return rental.insertOffice(rental.createRentalOffice(rentalOffice_Id,rentalOffice_Name,location,maximumBicycleCnt));
  }
%>
