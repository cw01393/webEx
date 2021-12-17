<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="validate.js"></script>
<title>Insert title here</title>
</head>
<body>
    <h1>수강신청</h1>
    <p>최소 한 개 과목 이상 신청해야 합니다</p>
    <form action="subjectPro.jsp">
        <ul>
            <li><input type="checkbox" name="subjects" value="java"><span>Java</span></li>
            <li><input type="checkbox" name="subjects" value="jsp"><span>JSP</span></li>
            <li><input type="checkbox" name="subjects" value="html/css"><span>html/css</span></li>
            <li><input type="checkbox" name="subjects" value="js"><span>JS</span></li>
            <li><input type="checkbox" name="subjects" value="spring"><span>Spring</span></li>
        </ul>
        <input type="button" value="인풋버튼" onclick="checkVal(form)">
        <!-- submit input이 없을 경우 일반 button이 submit역할을 함(버튼이 여러개일땐 첫번째 버튼)
        	하지만 input type="button"은 submit역할을 할 수 없음 -->
    </form>
</body>
</html>