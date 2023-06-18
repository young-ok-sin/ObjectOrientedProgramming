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

<div class="show-list">
    <%
        int pageSize = 5;
        int currentPage = (request.getParameter("page") != null) ? Integer.parseInt(request.getParameter("page")) : 1;
        int prevPage = 0;
        int nextPage = 0;
        List<Notice> list = doInquiryNoticeAll(currentPage);
        for (int i = (currentPage-1)*pageSize; i < currentPage*pageSize; i++) {
            if(list.size() > i) {
                out.println("<div class=\"list\">");
                out.println("<div class=\"number\">번호: " + (i + 1) + "</div>");
                out.println("<div class=\"date\">일자: " + list.get(i).getDate().toString() + "</div>");
                out.println("<div class=\"title\">제목: " + list.get(i).getTitle() + "</div>");
                out.println("<div class=\"writer\">작성자: " + list.get(i).getWriter() + "</div><br>");
                out.println("</div>");
                out.println("<div class=\"content\">내용: " + list.get(i).getContent() + "</div>");
            }else {
                break;
            }
        }
    %>

    <div class="list-bottom">
        <% if(currentPage > 1) { %>
        <% prevPage = currentPage -1; %>
        <img class=minus-btn src="../img/minus.png" onclick="location.href='?page=<%= prevPage %>'" alt="minusBtn">
        <% }else {%>
        <img class=minus-btn src="../img/minus.png" alt="minusBtn">
        <%}%>
        <div class=page-num><%=currentPage%></div>
        <% if((currentPage*pageSize) < list.size()) { %>
        <% nextPage = currentPage + 1; %>
        <img class=plus-btn src="../img/plusBtn.png" onclick="location.href='?page=<%= nextPage %>'" alt="plusBtn">
        <% }else {%>
        <img class=plus-btn src="../img/plusBtn.png" alt="plusBtn">
        <%}%>
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
