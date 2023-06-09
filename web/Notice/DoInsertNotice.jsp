<%--
  Created by IntelliJ IDEA.
  User: qarkc
  Date: 2023-06-09(009)
  Time: 오후 4:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.Date" %>
<%@ page import="NoticeManage.Notice" %>
<%@ page import="NoticeManage.NoticeManagement" %>
<%@ page import="java.sql.SQLException" %>
<%
    request.setCharacterEncoding("euc-kr");
    Date date = new Date(System.currentTimeMillis());
    String writer = request.getParameter("writer");
    String title = request.getParameter("title");
    String content = request.getParameter("content");
    int result = 0;
%>
<html>
<head>
    <title>InsertNotice</title>
    <link rel="stylesheet" href="../MainHeader/MainHeader.css">
</head>
<body>
<jsp:include page="../MainHeader/MainHeader.jsp"></jsp:include>
등록 완료
</body>
</html>
<%
    try {
        boolean dbResult = false;
        NoticeManagement noticeManagement = new NoticeManagement();
        Notice notice = noticeManagement.getNotice(date, writer, title, content, result);
        dbResult = noticeManagement.insertNotice(notice);
        if(dbResult) {
            System.out.println("db 성공");
        }else {
            System.out.println("db 실패");
        }
    } catch (SQLException | ClassNotFoundException e) {
        System.out.println("Error InsertNotice");
        e.printStackTrace();
    }
%>
