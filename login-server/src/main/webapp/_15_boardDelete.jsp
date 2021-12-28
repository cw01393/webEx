<%@page import="board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
    *{
        margin: 0;
        padding:0;
    }
    body{
        width: 100vw;
        height: 100vh;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;

        gap:20px;
    }
    form{
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;

        gap: 20px;
    }
    input[type="submit"]{
        width: 120px;
        height: 40px;
        background-color: black;
        color: white;
        border: none;
        cursor: pointer;
        font-size: 1em;
    }
    span{
        font-size: 1em;
    }
    input[type="password"]{
        height: 30px;
    }

</style>
<title>Delete</title>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");
	String code = request.getParameter("code");
	%>
	<h3>삭제할 게시물의 비밀번호를 입력하세요</h3>
	<form method="post" action="_16_boardDeletePro.jsp">
		<div>
			<span>비밀번호</span>
			<input type="password" name="pw">
			<input type="hidden" name="code" value=<%=code %>>
		</div>
		<input type="submit" value="삭제하기">
	</form>
</body>
</html>