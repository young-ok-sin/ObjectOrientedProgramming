<%@ page import="MemberManage.Member" %>
<%@ page import="MemberManage.UserController" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="MemberManage.InquiryInfo" %><%--
  Created by IntelliJ IDEA.
  User: lks99
  Date: 2023-06-13
  Time: 오전 3:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
  <%
    String id = (String) session.getAttribute("user_id");
    Member member = getInfo(id);
    String name = member.getName();
    int age = member.getAge();
    String date = member.getBirthday();
    String phoneNumber = member.getPhoneNumber();

    System.out.println(name);

    request.setAttribute("id", id);
    request.setAttribute("name", name);
    request.setAttribute("age", age);
    request.setAttribute("date", date);
    request.setAttribute("phoneNumber", phoneNumber);

    request.getRequestDispatcher("./UserInquiryPage.jsp").forward(request, response);
  %>
</body>
</html>
<%!
  private Member getInfo(String id) throws SQLException, ClassNotFoundException {
    InquiryInfo mm = new InquiryInfo();
    return mm.getMemberInfo(id);
  }
%>