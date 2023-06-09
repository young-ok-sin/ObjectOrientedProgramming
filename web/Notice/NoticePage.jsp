<%@ page import="NoticeManage.Notice" %>
<%@ page import="java.util.List" %>
<%@ page import="NoticeManage.NoticeManagement" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.sql.SQLException" %><%--
  Created by IntelliJ IDEA.
  User: qarkc
  Date: 2023-06-07(007)
  Time: 오후 10:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="../MainHeader/MainHeader.css">
    <link rel="stylesheet" href="./NoticePage.css">
    <title>Notice</title>
</head>
<body>
<jsp:include page="/MainHeader/MainHeader.jsp"></jsp:include>
<%
    //동적으로 생성 out.println 사용해서!
%>

<div class="show-list">
    <div class="list-header">
        <div class="number-header">번호</div>
        <div class="date-header">날짜</div>
        <div class="title-header">제목</div>
        <div class="writer-header">작성자</div>
    </div>
    <%
        int pageNum = 1;
        List<Notice> list = doInquiryNoticeAll(pageNum);
        for (int i = 0; i < list.size(); i++) {
            out.println("<div class=\"list\">");
            out.println("<div class=\"number\">" + (i + 1) + "</div>");
            out.println("<div class=\"date\">" + list.get(i).getDate().toString() + "</div>");
            out.println("<div class=\"title\">" + list.get(i).getTitle() + "</div>");
            out.println("<div class=\"writer\">" + list.get(i).getWriter() + "</div><br>");
            out.println("</div>");
            out.println("<div class=\"content\">내용: " + list.get(i).getContent() + "</div>");
        }
    %>

    <div class="list-bottom">
        <div class=minus-btn>-</div>
        <div class=page-num>1</div>
        <div class=plus-btn>+</div>
    </div>

    <div class="btn">
        <button class="gotoInsert" onclick="location.href='./NoticeInsert.jsp'">공지 등록</button>
    </div>
</div>

</body>
</html>
<%!
    private List<Notice> doInquiryNoticeAll(int pageNum) {
        NoticeManagement noticeManagement = null;
        List<Notice> list = new ArrayList<>();
        try {
            noticeManagement = new NoticeManagement();
            list = noticeManagement.inquiryNoticeAll(pageNum);
        } catch (SQLException | ClassNotFoundException e) {
            System.out.println("Error InquiryNoticeAll");
            e.printStackTrace();
        }
        return list;
    }
%>
<%!
    private void onClickMinus(int pageNum) {
        if (pageNum > 1) {
            pageNum--;
        }
    }

    private void onClickPlus(int pageNum) {
        if (pageNum < 11) {
            pageNum++;
        } else {
            pageNum = 1;
        }
    }
%>
