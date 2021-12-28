<%@page import="board.BoardDTO"%>
<%@page import="board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");
	String code = request.getParameter("code");
	
	BoardDAO dao = BoardDAO.getInstance();
	BoardDTO selected = dao.searchDTO(Integer.parseInt(code));
	
	dao.increaseLike(selected);
	response.sendRedirect("_18_boardView.jsp?code="+code);
	%>

</body>
</html>