<%@ page import="MemberManage.UserController" %>
<%@ page import="java.sql.SQLException" %><%--
  Created by IntelliJ IDEA.
  User: lks99
  Date: 2023-06-10
  Time: 오후 9:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"

         pageEncoding="EUC-KR"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

  <meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">

  <title>Insert title here</title>

</head>

<body>

  <%
    String id = request.getParameter("id");
    String pwd = request.getParameter("pwd");

    if (doLogin(id, pwd)) {
      session.setAttribute("user_id", id);
      response.sendRedirect("../MainPage/MainPage.jsp"); // 페이지이동
    }
    else{
      //경고창
      response.sendRedirect("./Login.jsp");
    }
  %>

</body>

</html>
<%!
  private boolean doLogin(String id, String pwd) throws SQLException, ClassNotFoundException {
    UserController mm = new UserController();
    return mm.isExist(id, pwd);
  }
%>