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
        if((id != null) && (pw != null) && (phoneNumber != null) && (age != null) && (date != null)) {
            url = "RegisterSuccess.jsp"; //Todo 조건문에서 무조건 True만 반환하는 것 해결
        }
        else {
            url = "RegisterFail.jsp";
        }
    %>
    <jsp:forward page="<%= url %>"></jsp:forward>
</body>
</html>
<%!
    private boolean checkInvalidValue(String id, String pw, String phoneNumber, String age, String date) {
        return ((id != null) && (pw != null) && (phoneNumber != null) && (age != null) && (date != null));
    }
%>>