<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        *{
            margin: 0;
            padding: 0;

            gap: 10px;
        }
        
        body{
            width: 100vw;
            height: 100vh;
            display: flex;
            flex-direction: column;

            align-items: center;
        }
        h1{
            height: 200px;
            font-size: 3em;
            font-weight: bold;
            color: rgb(38, 192, 38);

            display: flex;
            padding-top: 30px;
        }
        button{
            height: 50px;
            width: 150px;
            background-color: rgb(37, 165, 37);
            color: white;
            font-size: 1em;
            border: none;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <h1>NAVER</h1>
    <button onclick="location.href='_10_boardList.jsp'">게시판</button>
    <%
    if(session.getAttribute("log") != null){
    	%>
    	<button onclick="location.href='_05_login.jsp'">로그아웃</button>
    <%} 
    else{%>
	    <button onclick="location.href='_05_login.jsp'">로그인</button>
    <%} %>
    <button onclick="location.href='_01_agree.jsp'">회원가입</button>
</body>
</html>