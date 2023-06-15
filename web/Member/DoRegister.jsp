<%@ page import="MemberManage.MemberManagement" %>
<%@ page import="java.sql.SQLException" %><%--
  Created by IntelliJ IDEA.
  User: lks99
  Date: 2023-06-06
  Time: 오후 5:14
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
        String id = request.getParameter("id");
        String pw = request.getParameter("password");
        String name = request.getParameter("name");
        String phoneNumber = request.getParameter("phoneNumber");
        int age = Integer.parseInt(request.getParameter("age"));
        String date = request.getParameter("date");
        String url = "";
        if(doRegister(id, pw, name, phoneNumber, age, date)) {
            response.sendRedirect("../index.jsp");
        }
        else {
            //실패 알림
            response.sendRedirect("./RegisterPage.jsp");
        }
    %>
</body>
</html>
<%!
    private boolean doRegister(String id, String pw, String name, String phoneNumber, int age, String date) throws SQLException, ClassNotFoundException {
        MemberManagement mm = new MemberManagement();
        return mm.insertMember(mm.createMember(id, pw, name, phoneNumber, age, date, ""));
    }
%>