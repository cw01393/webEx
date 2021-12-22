<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <script type="text/javascript" src="_validation_1"></script>
    <title>join</title>
</head>
<body>
    <form method="get" action="_join_1.jsp">
        <input type="checkbox" class="all" id="check"><span>전체동의</span><br><br>
        <input type="checkbox" id="check" name="required"><span>필수1</span><br>
        <p>동의해야하는 사항에 대한 설명글이 작성되어있다</p>
        <input type="checkbox" id="check" name="required"><span>필수2</span><br>
        <input type="checkbox" id="check" name="option"><span>선택1</span><br>
        <input type="checkbox" id="check" name="option"><span>선택2</span><br>
        <input type="checkbox" id="check" name="option"><span>선택3</span><br>

        <input type="button" onclick="checkVal(form)" value="동의하기">
    </form>
    
    <script>
        // JQuery
        $('.all').click(e=>{
            $('input#check').prop('checked', $('.all').prop('checked'));
        });
    </script>
</body>
</html>