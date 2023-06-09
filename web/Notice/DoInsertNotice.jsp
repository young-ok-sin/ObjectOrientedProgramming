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

<html>
<head>
    <title>InsertNotice</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");
    Date date = new Date(System.currentTimeMillis());
    String writer = request.getParameter("writer");
    String title = request.getParameter("title");
    String content = request.getParameter("content");
    int result = 0;
    String url = "";

    if(doInsertNotice(date, writer, title, content, result)) {
        url = "../ResultPage/Success.jsp";
    }else {
        url = "../ResultPage/Fail.jsp";
    }
    response.sendRedirect(url);
%>
</body>
</html>
<%!
    private boolean doInsertNotice(Date date, String writer, String title, String content, int result) {
        boolean dbResult = false;
        if (writer.equals("") || title.equals("") || content.equals("")) {
            System.out.println("작성자, 제목, 내용을 다시 입력해주세요.");
        } else {
            try {
                NoticeManagement noticeManagement = new NoticeManagement();
                Notice notice = noticeManagement.getNotice(date, writer, title, content, result);
                dbResult = noticeManagement.insertNotice(notice);
                System.out.println("db 성공");
            } catch (SQLException | ClassNotFoundException e) {
                System.out.println("Error InsertNotice");
                e.printStackTrace();
            }
        }
        return dbResult;
    }
%>
