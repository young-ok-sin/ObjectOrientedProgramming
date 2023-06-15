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
        String strAge = request.getParameter("age");
        String date = request.getParameter("date");
        System.out.println("ddd" + pw);

        String url = "";
        try {
            if(!isEmpty(id, pw, name, strAge, date, phoneNumber) && doRegister(id, pw, name, phoneNumber, Integer.parseInt(strAge), date)) {
                response.sendRedirect("../index.jsp");
            }
            else {
                //실패 알림
                response.sendRedirect("./RegisterPage.jsp");
            }
        } catch (NumberFormatException e) {
            e.printStackTrace();
            response.sendRedirect("./RegisterPage.jsp");
        }

    %>
</body>
</html>
<%!
    private boolean isEmpty(String id, String pw, String name, String age, String date, String phoneNumber) {
        return id.isEmpty() || pw.isEmpty() || name.isEmpty() || age.isEmpty() || date.isEmpty() || phoneNumber.isEmpty();
    }

    private boolean doRegister(String id, String pw, String name, String phoneNumber, int age, String date) throws SQLException, ClassNotFoundException {
        MemberManagement mm = new MemberManagement();
        return mm.insertMember(mm.createMember(id, pw, name, phoneNumber, age, date, ""));
    }
%>