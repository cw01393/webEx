<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	request.setCharacterEncoding("utf-8");

	String[] answer = new String[5];
	String[] rightAnswer = new String[5];
%>	
	<table border="1">
	<tr><th colspan="5">구구단</th></tr>
    <tr>
        <th>no.</th>
        <th>quiz</th>
        <th>answer</th>
        <th>rightAnswer</th>
        <th>check</th>
    </tr>
    <%
    int score = 0;
    
    for(int i=0; i<5; i++){
		answer[i] = request.getParameter(String.format("a%d",i+1));
		rightAnswer[i] = request.getParameter(String.format("r%d",i+1));
		String check = "";
		if(answer[i].equals(rightAnswer[i])){
			check = "O";
			score += 20;
		}
		else{
			check = "X";
		}
    %>
    <tr>
    	<td><%=i+1 %></td>
        <td><%=request.getParameter(String.format("quiz%d",i+1)) %></td>
        <td><%=answer[i] %></td>
        <td><%=rightAnswer[i] %></td>
        <td><%=check %></td>
    </tr>
    <% }%>
    <tr>
    	<td colspan="4">점수</td>
    	<td><%=score %>점</td>
    </tr>
    
</table>

</body>
</html>