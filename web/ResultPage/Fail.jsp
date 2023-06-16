<%--
  Created by IntelliJ IDEA.
  User: qarkc
  Date: 2023-06-09(009)
  Time: 오후 7:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="../MainHeader/MainHeader.css">
<%--    <link rel="stylesheet" href="./Result.css">--%>
    <title>Fail</title>
</head>
<body>
<jsp:include page="../MainHeader/MainHeader.jsp"></jsp:include>
<div class = "result">
    <img src="../img/bicycle_oos.png">
    <span>실패</span>
    <button class = "back-to-MainPage" onclick="location.href='../MainPage/MainPage.jsp'">메인으로 돌아가기</button>
</div>
</body>
</html>
