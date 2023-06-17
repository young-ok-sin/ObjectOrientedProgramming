<%--<%@ page import="java.sql.SQLException" %>--%>
<%--<%@ page import="BicycleManage.BicycleControl" %>&lt;%&ndash;--%>
<%--  Created by IntelliJ IDEA.--%>
<%--  User: duddhr--%>
<%--  Date: 2023-06-14--%>
<%--  Time: 오후 8:00--%>
<%--  To change this template use File | Settings | File Templates.--%>
<%--&ndash;%&gt;--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <title>Title</title>--%>
<%--    <script>--%>
<%--        function cannot(){--%>
<%--            alert("해당 대여소의 최대 자전거 수를 초과하였습니다.");--%>
<%--        }--%>
<%--    </script>--%>
<%--</head>--%>
<%--<body>--%>
<%--&lt;%&ndash;&lt;%&ndash;%>--%>
<%--&lt;%&ndash;    request.setCharacterEncoding("UTF-8");&ndash;%&gt;--%>
<%--&lt;%&ndash;    String bicycle_Id = request.getParameter("bicycle_id");&ndash;%&gt;--%>
<%--&lt;%&ndash;    String rentalOffcie_Id = request.getParameter("rent_id");&ndash;%&gt;--%>
<%--&lt;%&ndash;    String url = "";&ndash;%&gt;--%>
<%--&lt;%&ndash;    if(DoRegisterBicycle(bicycle_Id, rentalOffcie_Id)) {&ndash;%&gt;--%>
<%--&lt;%&ndash;        url = "../ResultPage/Success.jsp";&ndash;%&gt;--%>
<%--&lt;%&ndash;    }&ndash;%&gt;--%>
<%--&lt;%&ndash;    else {&ndash;%&gt;--%>
<%--&lt;%&ndash;        url = "../ResultPage/Fail.jsp";&ndash;%&gt;--%>
<%--&lt;%&ndash;    }&ndash;%&gt;--%>
<%--&lt;%&ndash;    response.sendRedirect(url);&ndash;%&gt;--%>
<%--<%--%>
<%--    request.setCharacterEncoding("UTF-8");--%>
<%--    String bicycle_Id = request.getParameter("bicycle_id");--%>
<%--    String rentalOffcie_Id = request.getParameter("rent_id");--%>
<%--    String url = "";--%>

<%--    BicycleControl bi = new BicycleControl();--%>
<%--    if (bi.isRentalOfficeFull(rentalOffcie_Id)) {--%>
<%--        // 최대 자전거 수 초과 에러 메시지 출력--%>
<%--        System.out.println("초과");--%>
<%--        url = "../ResultPage/Fail.jsp";--%>
<%--    } else {--%>
<%--        if (bi.insertBicycle(bi.createBicycle(bicycle_Id, rentalOffcie_Id))) {--%>
<%--            url = "../ResultPage/Success.jsp";--%>
<%--        } else {--%>
<%--            url = "../ResultPage/Fail.jsp";--%>
<%--        }--%>

<%--    }response.sendRedirect(url);--%>
<%--%>--%>
<%--</body>--%>
<%--</html>--%>
<%--<%!--%>
<%--    private boolean DoRegisterBicycle(String bicycle_Id, String rentalOffcie_Id) throws SQLException, ClassNotFoundException {--%>
<%--        BicycleControl bi = new BicycleControl();--%>
<%--        return bi.insertBicycle(bi.createBicycle(bicycle_Id,rentalOffcie_Id));--%>
<%--    }--%>
<%--%>--%>
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