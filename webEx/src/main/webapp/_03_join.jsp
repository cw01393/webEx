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

            gap: 10px;
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
        form{
            display: flex;
            flex-direction: column;

            align-items: center;
        }
        div.wrap{
            width: 35vw;
            display: flex;
            flex-direction: column;
        }
        div.birth{
            display: flex;
            justify-content: space-between;
        }
        div.tel{
            display: flex;
            flex-direction: column;
        }
        p{
            display: flex;
            justify-content: space-between;
        }
        input{
            height: 30px;
        }
        input.birth{
            width: 30%;
        }
        input#tel{
            flex-basis: 75%;
        }
        input#btn{
            flex-basis: 25%;
            height: 33px;
            border: none;
            background-color: rgb(38, 192, 38);
            color: white;

        }
        input#submitBtn{
            width: 200px;
            height: 50px;
            border: none;
            background-color: rgb(38, 192, 38);
            color: white;
            font-size: 1em;
        }
        select{
            height: 30px;
        }
        span.alert{
            display: none;
            color:red;
        }

    </style>
    <script type="text/javascript" src="_02_validation.js"></script>
    <title>join</title>
</head>
<body>
    <h1>NAVER</h1>
    <form method="post" action="_04_joinPro.jsp">
        <div class="wrap">
            <span>아이디</span>
            <input type="text" name="nes">
            <span class="alert" id="n1">필수 정보입니다</span>
            <span>비밀번호</span>
            <input type="password" name="nes">
            <span class="alert" id="n2">필수 정보입니다</span>
            <span>비밀번호 재확인</span>
            <input type="password" name="nes">
            <span class="alert" id="n3">필수 정보입니다</span>
            <span>이름</span>
            <input type="text" name="nes">
            <span class="alert" id="n4">필수 정보입니다</span>
            <span>생년월일</span>
            <div class="birth">
                <input type="number" name="nes" class="birth">
                <input type="number" name="nes" class="birth">
                <input type="number" name="nes" class="birth">
            </div>
            <span class="alert" id="n5">필수 정보입니다</span>
            <span>성별</span>
            <select name="nes">
                <option value="">성별</option>
                <option value="M">남자</option>
                <option value="W">여자</option>
                <option value="none">선택안함</option>
            </select>
            <span class="alert" id="n6">필수 정보입니다</span>
            <span>본인확인 이메일(선택)</span>
            <input type="email" name="sel">
            <span>전화번호</span>
            <div class="tel">
                <p>
                    <input type="tel" name="nes" id="tel">
                    <input type="button" value="인증번호 받기" id="btn">
                </p>
                <input type="number" name="nes" id="num">
            </div>
            <span class="alert" id="n7">필수 정보입니다</span>
        </div>
        <input type="button" value="가입하기" id="submitBtn" onclick="checkInfo(form)">
    </form>
    
</body>
</html>