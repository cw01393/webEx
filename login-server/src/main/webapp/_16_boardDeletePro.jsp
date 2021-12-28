<%@page import="board.BoardDTO"%>
<%@page import="board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
	*{
		margin :0;
		paddint:0;
	}
	body{
		width: 100vw;
		height: 100vh;
		
		display:flex;
		flex-direction : column;
		justify-content: center;
		align-items: center;
		
		gap: 20px;
	}
 	button{
        width: 80px;
        height: 30px;
        background-color: black;
        color: white;
        border: none;
        cursor: pointer;
    }
</style>
<title>Delete Result</title>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");
	int code = Integer.parseInt(request.getParameter("code"));
	String pw = request.getParameter("pw");
	
	BoardDAO dao = BoardDAO.getInstance();
	BoardDTO target = dao.searchDTO(code);
	
	if(target != null && target.getPw().equals(pw)){
		dao.deleteData(code);
		response.sendRedirect("_10_boardList.jsp");
	}
	else{ %>
		<h3>비밀번호 불일치</h3>
		<button onclick="location.href='_10_boardList.jsp'">목록으로</button>
	<%} %>

</body>
</html>