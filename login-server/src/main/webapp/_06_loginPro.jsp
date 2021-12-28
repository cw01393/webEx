<%@page import="user.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<style type="text/css">
		*{
            margin: 0;
            padding: 0;

            gap: 10px;
        }
        
        body{
            width: 100vw;
            height: 100vh;

            display: grid;
            grid-template-columns: 1fr;
            grid-template-rows: 150px 1fr;
            grid-template-areas:
            "logo"
            "div";
            
        }
        h1{
            display: flex;

            align-items: center;
            justify-content: center;
            grid-area: logo;
            font-size: 3em;
            font-weight: bold;
            color: rgb(38, 192, 38);
        }
        div{
        	grid-area:div;
        	display:flex;
        	flex-direction:column;
        	align-items: center;
        	
        	gap:30px;
        }
        input{
        	height: 50px;
            width: 150px;
            background-color: rgb(38, 192, 38);
            color: white;
            font-size: 1em;
            border: none;
            cursor: pointer;
        }
        form{
        	display: flex;
        	gap : 10px;
        }
        
	</style>
<title>login</title>
</head>
<body>
	<h1>NAVER</h1>
	<div>
		<%
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		UserDAO dao = UserDAO.getInstance();
		
		int log = dao.login(id, pw);
		if(log != -1){
			session.setAttribute("log", id); %>
			<h3><%=id %>님 로그인 되었습니다</h3>
			<form method="post" action="_10_boardList.jsp">
				<input type="button" value="로그아웃" onclick="location.href='_05_login.jsp'">
				<input type="submit" value="게시판바로가기">
			</form>
		<%		
		}
		else{ %>
			<h3>로그인 정보를 다시 확인하세요</h3>
			<form method="post" action="_05_login.jsp">
				<input type="submit" value="뒤로가기">
			</form>
		<%	
		}
		%>
	</div>
	
</body>
</html>