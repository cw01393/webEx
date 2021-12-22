<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        body{
            display: flex;
            flex-direction: column;

            align-items: center;
        }
        form{
            display: flex;
            flex-direction: column;

            align-items: center;
        }
        div{
            width: 40vw;
            display: flex;
            flex-direction: column;

            gap: 50px;
        }
        h1{
            font-size: 3em;
            font-weight: bold;
            color: rgb(38, 192, 38);
        }
        input#btn{
            width: 200px;
            height: 50px;
            background-color: rgb(38, 192, 38);
            border: none;
            color: white;
            font-size: 1em;
        }

    </style>
    <script type="text/javascript" src="_02_validation.js"></script>
    <title>join</title>
</head>
<body>
    <h1>NAVER</h1>
    <form method="post" action="_03_join.jsp">
        <div>
            <p><input type="checkbox" name="nes"><span>네이버 이용약관 동의(필수)</span></p>
            <p><input type="checkbox" name="nes"><span>개인정보 수집 및 이용 동의(필수)</span></p>
            <p><input type="checkbox" name="sel"><span>위치정보 이용약관 동의(선택)</span></p>
            <p><input type="checkbox" name="sel"><span>프로모션 정보 수신 동의(선택)</span></p>
        </div>
        <p><input type="button" value="확인" id="btn" onclick="checkAgree(form)">
    </form>
    
</body>
</html>