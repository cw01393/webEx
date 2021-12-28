<%@page import="java.sql.Timestamp"%>
<%@page import="board.BoardDTO"%>
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
<title>Update</title>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");
	int code = Integer.parseInt(request.getParameter("code"));
	
	BoardDAO dao = BoardDAO.getInstance();
	BoardDTO selected = dao.searchDTO(code);
	
	String title = "";
	String content = "";
	
	if(selected != null){
		title = selected.getTitle();
		content = selected.getContent();
	}
	%>
	<div>
        <h1>게시글 수정</h1>

        <form method="post" action="_14_boardUpdatePro.jsp">
            <input type="hidden" name="code" value="<%=code%>">
            <p>
                <span>제목</span>
                <input type="text" id="title" name="title" value=<%=title %>>
            </p>
            <textarea name="content" id="content" cols="100" rows="20"><%=content %></textarea>
            <p>
                <span>비밀번호</span>
                <input type="password" name="pw">
            </p>
            <input type="button" value="수정하기" onclick="checkContent(form)">
        </form>
    </div>

</body>
</html>