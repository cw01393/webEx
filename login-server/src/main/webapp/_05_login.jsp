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
        div.wrap{
            grid-area: div;

            display: flex;
            justify-content: center;
        }
        form{
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        span{
            white-space: pre;
        }
        input{
            height: 30px;
        }
        input[type="button"]{
            height: 50px;
            width: 150px;
            background-color: rgb(38, 192, 38);
            color: white;
            font-size: 1em;
            border: none;
            cursor: pointer;
        }
        
	</style>
	<script type="text/javascript" src="_02_validation.js"></script>
	<title>login</title>
</head>
<body>
	<%
	session.removeAttribute("log");
	%>
	<h1>NAVER</h1>
    <div class="wrap">
	    <form method="post" action="_06_loginPro.jsp">
            <div>
                <span>아이디&#9;</span>
                <input type="text" name="id"><br><br>
                <span>비밀번호&#9;</span>
                <input type="password" name="pw"><br><br>
            </div>
            <input type="button" value="로그인" onclick="checkLogin(form)">
        </form>
    </div>
</body>
</html>