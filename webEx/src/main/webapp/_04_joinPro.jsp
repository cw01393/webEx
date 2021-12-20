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
        	gap: 10px;
        }
        p.title{
        	font-weight:bold;
        	font-size:1.2em;
        }
    </style>
    <title>join</title>
</head>
<body>
    <h1>NAVER</h1>
    <h2>회원가입이 완료되었습니다!</h2>
    
    <div class="info">
	    <%
	    request.setCharacterEncoding("utf-8");
	    
	    String[] values = request.getParameterValues("nes");
	    String email = request.getParameter("sel");
		%>
    	<p class="title">아이디</p>
    	<p><%=values[0] %></p>
    	<p class="title">이름</p>
    	<p><%=values[3] %></p>
    	<p class="title">생년월일</p>
    	<p><%=String.format("%s년 %s월 %s일", values[4], values[5], values[6]) %></p>
    	<p class="title">성별</p>
    	<p><%=values[7] %></p>
    	<p class="title">연락처</p>
    	<p><%=values[8] %></p>
    	<%if(email != ""){ %>
	    	<p class="title">이메일</p>
	    	<p><%=email %></p>
    	<% }%>
    
    </div>
    
</body>
</html>