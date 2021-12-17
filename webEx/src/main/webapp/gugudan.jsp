<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 구구단 랜덤 문제 출제(5문제) 
	form 안에 table형식으로 문제와 답입력 칸 제시
	사용자 입력한 답을 -> pro 페이지에서 검증 후 -> 성적표 출력(정오표)
	
	column : no, quiz, input
	pro column : no, quiz, answer, dap, o/x, 점수(100만점)
-->

    <form method="POST" action="gugudanPro.jsp">
        <table border="1">
        	<tr><th colspan="3">구구단</th></tr>
            <tr>
                <th>no.</th>
                <th>quiz</th>
                <th>answer</th>
            </tr>
            <%
        	Random rn = new Random();
            
            for(int i=0; i<5; i++){
				int rN1 = rn.nextInt(8)+2;
				int rN2 = rn.nextInt(9)+1;
            %>
            <tr>
            	<td><%=i+1 %></td>
                <td><%=rN1 %>X<%=rN2 %><input type="hidden" name=quiz<%=i+1 %> value="<%=rN1%>X<%=rN2%>"></td>
                <td><input type="text" name="a<%=i+1%>"><input type="hidden" name=r<%=i+1 %> value="<%=rN1*rN2%>"></td>
            </tr>
            <% }%>
        </table>
        <input type="submit">
    </form>


</body>
</html>