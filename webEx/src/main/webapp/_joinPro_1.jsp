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
	// 사용자에게는 보이지 않는 페이지(데이터 처리)
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	UserDAO dao = UserDAO.getInstance();
	UserDTO user = new UserDTO(id,pw);
	
	String url="";	
	if(dao.addUser(user)){
		url="_login_1.jsp";
	}
	else{
		url="_join_1.jsp";
	}
	response.sendRedirect(url);
	
	%>
	
	<h1>id : <%=id %></h1>
	<h1>pw : <%=pw %></h1>
</body>
</html>