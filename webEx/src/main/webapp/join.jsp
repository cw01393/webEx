<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
        span{
            white-space: pre;
        }
    </style>
<title>Insert title here</title>
</head>
<body>
	<h1>join</h1>
    <form method="POST" action="joinPro.jsp">
    	<!-- http://localhost:8081/webEx/joinPro.jsp?파라미터명=값&파라미터명2=값2 -->
    	<!-- GET -->
    	<!-- http://localhost:8081/webEx/joinPro.jsp?id=1234&pw=1234 -->
    	
    	<!-- POST -->
    	<!-- http://localhost:8081/webEx/joinPro.jsp -->
        <span>id:&#9;</span><input type="text" name="id"><br><br>
        <span>pw:&#9;</span><input type="text" name="pw"><br><br>
        <input type="submit">
    </form>
</body>
</html>