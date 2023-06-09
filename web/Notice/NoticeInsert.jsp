<%--
  Created by IntelliJ IDEA.
  User: qarkc
  Date: 2023-06-08(008)
  Time: 오후 6:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="../MainHeader/MainHeader.css">
    <link rel="stylesheet" href="./NoticeInsert.css">
    <title>Notice insert</title>
</head>
<jsp:include page="../MainHeader/MainHeader.jsp"></jsp:include>
<body>
<div class="sub-notice-header">
    <img src="../img/bicycle_oos.png" alt="logo">
    <span class="subheader-text">공지 등록</span>
</div>
<form action="DoInsertNotice.jsp" class="insert-notice-body" method="post">
    <div class="input-notice-info">
        <div class="input-notice-content">
            <img src="../Icon/pencil.svg" alt="writer" class="writer-img">
            <label>
                <input class="writer" name="writer" placeholder="작성자를 입력하세요.">
            </label>
            <img src="../Icon/title.svg" alt="title" class="title-img">
            <label>
                <input class="title" name="title" placeholder="공지 제목을 입력해주세요">
            </label>
            <img src="../Icon/content.svg" alt="content" class="content-img">
            <label>
                <div class="content-area">
                    <textarea class="content" name="content" placeholder="내용을 입력하세요."></textarea>
                </div>
                <div class="btn">
                    <button class="cancel-btn" type="button" onclick="location.href='./NoticePage.jsp';">취소</button>
                    <button class="insert-btn" type="submit">등록</button>
                </div>
            </label>
        </div>
    </div>
</form>
</body>
</html>
