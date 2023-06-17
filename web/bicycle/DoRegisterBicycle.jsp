<%@ page import="java.sql.SQLException" %>
<%@ page import="BicycleManage.BicycleControl" %>

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

    BicycleControl bi = new BicycleControl();
    if (bi.isRentalOfficeFull(rentalOffcie_Id)) {
        // 최대 자전거 수 초과 에러 메시지 출력
        out.println("<script>alert('해당 대여소의 최대 자전거 수를 초과하였습니다.'); history.go(-1);</script>");
    } else {
        if (bi.insertBicycle(bi.createBicycle(bicycle_Id, rentalOffcie_Id))) {
            url = "../ResultPage/Success.jsp";
        } else {
            url = "../ResultPage/Fail.jsp";
        }
        response.sendRedirect(url);
    }
%>
</body>
</html>
<%!
    private boolean DoRegisterBicycle(String bicycle_Id, String rentalOffcie_Id) throws SQLException, ClassNotFoundException {
        BicycleControl bi = new BicycleControl();
        return bi.insertBicycle(bi.createBicycle(bicycle_Id,rentalOffcie_Id));
    }
%>