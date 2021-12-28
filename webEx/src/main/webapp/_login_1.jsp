<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        h1{
            color: green;
        }
        span{
            white-space: pre;
        }
        input[type="text"]{
            padding: 10px;
            border: solid 2px green;
        }
        input[type="button"]{
        	cursor:pointer;
            padding: 10px;
            border: none;
            background-color: green;
            color: white;
        }
    </style>
    <script type="text/javascript" src="_validation_1"></script>
    <title>Document</title>
</head>
<body>
    <form method="post" action="_joinPro_1.jsp">
        <h1>Login</h1>
        <span>id:&#9;</span><input type="text" name="id"><br><br>
        <span>pw:&#9;</span><input type="text" name="pw"><br><br>
        <input type="button" onclick="checkInfo(form)" value="join">
    </form>
</body>
</html>