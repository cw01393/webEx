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
        }
        div{
            width: 100vw;
            height: 100vh;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }
        h1{
            height: 100px;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        form{
            display: flex;
            flex-direction: column;
            align-items: center;
            gap: 20px;
        }
        input#title{
            width: 50vw;
        }
        input[type="button"]{
            width: 150px;
            height: 50px;
            background-color: black;
            color: white;
            border: none;
            cursor: pointer;
            font-size: 1em;
        }

    </style>
    <script type="text/javascript" src="_02_validation.js"></script>
    <title>writing</title>
</head>
<body>
    <div>
        <h1>게시글 작성</h1>

        <form method="post" action="_12_boardWritePro.jsp">
            <p>
                <span>제목</span>
                <input type="text" id="title" name="title">
            </p>
            <textarea name="content" id="content" cols="100" rows="20"></textarea>
            <p>
                <span>비밀번호</span>
                <input type="password" name="pw">
            </p>
            <input type="button" value="등록하기" onclick="checkContent(form)">

        </form>
    </div>
</body>
</html>