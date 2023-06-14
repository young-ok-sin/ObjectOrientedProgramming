<%--
  Created by IntelliJ IDEA.
  User: lks99
  Date: 2023-06-10
  Time: 오후 9:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
         pageEncoding="EUC-KR"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

  <meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
  <title>Insert title here</title>

  <style type="text/css">
    #error{
      color:red;
      font-size:10pt;
    }

  </style>

  <%
    //request스코프에 담긴 오류메시지 얻어오기.
    String errMsg = (String)request.getAttribute("errMsg");
    if(errMsg==null){
      errMsg="";
    }

  %>

</head>

<body>

  <form method="post" action="LoginOk.jsp">
    아이디<input type="text" name="id"/><br/>
    비밀번호<input type="password" name="pwd"/><br/>
    <div id="error"><%=errMsg %></div>
    <input type="submit" value="로그인"/>
  </form>

</body>

</html>