<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%-- jsp 주석 --%>
<%-- JSP : Java Server Page --%>
<%-- html 문서 안에 java 언어가 포함되는 형식 --%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	hello world
	
<% // 스크립틀릿 : 자바문장이 작성되는 구간을 태그로 표시 
	int num = 10;
	// 표현식 : 자바변수를 가져와주는 것
%>

<h1><%=num %></h1>

<%
// 모든 자바 문장을 작성할 수 있음(html문서 안에서 자바의 제어문 사용이 가능)
// 조건문 : if, if-else, switch-case
// 반복문 : while, do-while, for
// 보조제어문 : break, continue
%>

<%
String table = "";
for(int i=1; i<10; i++){
	table += "<tr>";
	for(int j=2; j<10; j++){
		table += "<td>";
		table += String.format("%d X %d = %d",j,i,i*j);
		table += "</td>";
	}
	table += "</tr>";
}
%>

<table border="solid 1px" style="border-collapse : collapse">
	<th colspan="8">구구단</th>
	<tr>
		<th>2단</th>
		<th>3단</th>
		<th>4단</th>
		<th>5단</th>
		<th>6단</th>
		<th>7단</th>
		<th>8단</th>
		<th>9단</th>
	</tr>
	<%=table %>

</table>
	
</body>
</html>