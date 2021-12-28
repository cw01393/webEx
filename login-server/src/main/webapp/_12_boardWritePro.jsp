<%@page import="board.BoardDTO"%>
<%@page import="board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>save</title>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");
	
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	String id = session.getAttribute("log").toString();
	String pw = request.getParameter("pw");
	
	BoardDAO dao = BoardDAO.getInstance();
	BoardDTO newContent = new BoardDTO(title,content,id,pw);
	
	dao.addContent(newContent);
	%>
	<% response.sendRedirect("_10_boardList.jsp"); %>

</body>
</html>