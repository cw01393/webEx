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
            <span>?????????</span>
            <input type="text" name="nes">
            <span class="alert" id="n1">?????? ???????????????</span>
            <span>????????????</span>
            <input type="password" name="nes">
            <span class="alert" id="n2">?????? ???????????????</span>
            <span>???????????? ?????????</span>
            <input type="password" name="nes">
            <span class="alert" id="n3">?????? ???????????????</span>
            <span>??????</span>
            <input type="text" name="nes">
            <span class="alert" id="n4">?????? ???????????????</span>
            <span>????????????</span>
            <div class="birth">
                <input type="number" name="nes" class="birth">
                <input type="number" name="nes" class="birth">
                <input type="number" name="nes" class="birth">
            </div>
            <span class="alert" id="n5">?????? ???????????????</span>
            <span>??????</span>
            <select name="nes">
                <option value="">??????</option>
                <option value="MAN">??????</option>
                <option value="WOMAN">??????</option>
                <option value="none">????????????</option>
            </select>
            <span class="alert" id="n6">?????? ???????????????</span>
            <span>???????????? ?????????(??????)</span>
            <input type="email" name="sel">
            <span>????????????</span>
            <div class="tel">
                <p>
                    <input type="tel" name="nes" id="tel">
                    <input type="button" value="???????????? ??????" id="btn">
                </p>
                <input type="number" name="nes" id="num">
            </div>
            <span class="alert" id="n7">?????? ???????????????</span>
        </div>
        <input type="button" value="????????????" id="submitBtn" onclick="checkInfo(form)">
    </form>
    
</body>
</html>