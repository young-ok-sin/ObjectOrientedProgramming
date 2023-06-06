<%--
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
        String id = request.getParameter("id");
        String pw = request.getParameter("password");
        String phoneNumber = request.getParameter("phoneNumber");
        String age = request.getParameter("age");
        String date = request.getParameter("date");
        String url = "";
        if(doRegister(id, pw, phoneNumber, age, date)) {
            url = "RegisterSuccess.jsp";
        }
        else {
            url = "RegisterFail.jsp";
        }
    %>
    <jsp:forward page="<%= url %>"></jsp:forward>
</body>
</html>
<%!
    private boolean doRegister(String id, String pw, String phoneNumber, String age, String date) {
        //Todo DB에 회원정보 저장하는 작업 수행
        return true;
    }
%>>