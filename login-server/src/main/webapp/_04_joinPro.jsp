<%@page import="user.UserDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="user.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        *{
            margin: 0;
            padding: 0;
            text-align: center;
        }
        body{
            display: flex;
            flex-direction: column;

            align-items: center;
            
        }
        h1{
            font-size: 3em;
            font-weight: bold;
            color: rgb(38, 192, 38);
        }
        h2{
            height: 100px;
            display: flex;
            align-items: center;
        }
        div.info{
        	display: flex;
        	flex-direction: column;
        	align-items: center;
        	gap: 10px;
        }
        p.title{
        	font-weight:bold;
        	font-size:1.2em;
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
        
    </style>
    <title>join</title>
</head>
<body>
    <h1>NAVER</h1>
    
    <div class="info">
	    <%
	    String[] values = request.getParameterValues("nes");
	    
	    String id = values[0];
	    String pw = values[1];
	    String pwcheck = values[2];
	    
	    if(pw.equals(pwcheck)){
	    	UserDAO dao = UserDAO.getInstance();
			
			UserDTO user = new UserDTO(id, pw);
			// 회원가입 처리
			
			if(!dao.checkDup(user)){
				dao.addUser(user);
			
				ArrayList<UserDTO> users = dao.getUsers();
				UserDTO last = users.get(users.size()-1);
		    	%>
		    	<h2>회원가입이 완료되었습니다!</h2>
		    	<h3><%=last.toString() %></h3>
				
			<%} 
			else{ %>
				<h2>아이디 중복, 회원가입이 처리되지 않았습니다</h2>
			<% }
	    }
	    else{%>
			<h2>비밀번호 불일치, 회원가입이 처리되지 않았습니다</h2>
		<% }%>
		<form method="post" action="_05_login.jsp">
				<input type="submit" value="로그인하기">
		</form>
    </div>
    
</body>
</html>