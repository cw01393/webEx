<%@page import="java.sql.Timestamp"%>
<%@page import="board.BoardDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<style>
        *{
            margin: 0;
            padding:0;
        }
        body{
            width: 100vw;
            height: 100vh;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            gap: 20px;
        }
        table{
            width: 60%;
            height: 80%;
        }
        td{
            padding-left: 20px;
        }
        tr.title{
            height: 50px;
            font-weight: bold;
        }
        tr.info{
            height: 50px;
        }
        button{
            width: 80px;
            height: 30px;
            background-color: black;
            color: white;
            border: none;
            cursor: pointer;
        }
    </style>
<title>view</title>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");
	String code = request.getParameter("code");
	
	BoardDAO dao = BoardDAO.getInstance();
	BoardDTO selected = dao.searchDTO(Integer.parseInt(code));
	
	String title = "";
	String content = "";
	String id = "";
	int view = 0;
	int like = 0;
	Timestamp date = new Timestamp(0);
	
	if(selected != null){
		title = selected.getTitle();
		content = selected.getContent();
		id = selected.getId();
		dao.increaseView(selected);
		view = selected.getView();
		like = selected.getLike();
		date = selected.getDate();
	}
	%>
	<table border="1">
        <tr class="title">
            <td colspan="4"><%=title %></td>
        </tr>
        <tr class="info">
            <td>작성자: <%=id %></td>
            <td><%=view %> view</td>
            <td><%=like %> like</td>
            <td><%=date %></td>
        </tr>
        <tr class="content">
            <td colspan="4"><%=content %></td>
        </tr>
    </table>
    <div>
    	<%
    	if(session.getAttribute("log") != null && id.equals(session.getAttribute("log"))){
    	%>
        <button onclick="location.href='_13_boardUpdate.jsp?code=<%=code%>'">수정하기</button>
        <button onclick="location.href='_15_boardDelete.jsp?code=<%=code%>'">삭제하기</button>
	    <%} %>
        <button onclick="location.href='_17_boardLike.jsp?code=<%=code%>'">좋아요</button>
        <button onclick="location.href='_10_boardList.jsp'">목록으로</button>
    </div>
</body>
</html>