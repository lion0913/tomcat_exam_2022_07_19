
<%--<%@ page language="java" contentType="text/html; charset=UTF-8"--%>
<%--         pageEncoding="UTF-8"%>--%>
<%--<!DOCTYPE html>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">--%>
<%--    <link rel="stylesheet"--%>
<%--          href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">--%>
<%--    <script--%>
<%--            src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>--%>
<%--    <script--%>
<%--            src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>--%>
<%--    <title>:: Board ::</title>--%>
<%--</head>--%>
<%--<body>--%>

<%--<div class="container">--%>
<%--    <h2><strong>게시판</strong></h2>--%>
<%--    <hr>--%>
<%--    <button type="button" onclick="location.href='boardWriteForm.bo'"--%>
<%--            class="btn btn-warning btn-lg ">게시판글쓰기</button>--%>
<%--</div>--%>
<%--<!-- 	<a href="boardWriteForm.bo">게시판글쓰기</a> -->--%>
<%--</body>--%>
<%--</html>--%>
<%@page import="java.awt.List"%>
<%@page import="java.io.Console"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <link href="css/board.css" rel="stylesheet" type="text/css">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <meta charset="EUC-KR">
    <title>board</title>
</head>
<body>
<div id="display">

    <button class="btn btn-dark" type="button" onclick="location.href='write'">글쓰기</button>
    <div class="container">

        <table class="table table-hover">
            <thead>
            <tr>
                <th>번호</th>
                <th>카테고리</th>
                <th>작성일자</th>
                <th>제목</th>
                <th>내용</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${articleList}" var="list">
                <tr>
                    <td>${list.id}</td>
                    <td>${list.name}</td>
                    <td>${list.createDate}</td>
                    <td>${list.title}</td>
                    <td>${list.body}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>

</div>
</body>
</html>
