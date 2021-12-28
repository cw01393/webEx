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
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	UserDAO dao = UserDAO.getInstance();
	
	String url = "";
	if(dao.login(id,pw)!=-1){
		session.setAttribute("log", id);
		url = "_main_1.jsp";
	}
	else{
		url = "_login_1.jsp";
	}
		response.sendRedirect(url);
	%>
</body>
</html>