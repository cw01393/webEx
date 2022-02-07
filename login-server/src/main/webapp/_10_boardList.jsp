<%@page import="java.sql.Timestamp"%>
<%@page import="board.BoardDTO"%>
<%@page import="board.BoardDAO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        *{
            margin: 0;
            padding: 0;
        }
        div{
            display: flex;
            flex-direction: column;
            align-items: center;   
        }
        h1{
            height: 100px;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        p{
            width: 80vw;
            height: 40px;
            display: flex;
            justify-content:space-between;
        }
        button{
            width: 80px;
            height: 30px;
            background-color: black;
            color: white;
            border: none;
            cursor: pointer;
        }
        table{
            width: 80vw;
            font-size: 1em;
        }
        tr.head{
            text-align: center;
            font-weight: bold;
            background-color: lightgrey;
        }
        td.c1{
            width: 5%;
            text-align: center;
        }
        td.c2{
            width: 55%;
            padding-left: 10px;
        }
        td.c3{
            width: 10%;
            text-align: center;
        }
        td.c4{
            width: 5%;
            text-align: center;
        }
        td.c5{
            width: 5%;
            text-align: center;
        }
        td.c6{
            width: 20%;
            text-align: center;
        }
    </style>
</head>
<body>
    <div>
        <h1>BOARD</h1>
        <p>
            <button onclick="location.href='_00_main.jsp'">HOME</button>
            <%if(session.getAttribute("log") != null){%>
            <button id="write" onclick="location.href='_11_boardWriteForm.jsp'">Write</button>
            <%} %>
        </p>
        <table border="solid 1px" style="border-collapse: collapse;">
            <tr class="head"> 
                <td class="c1">no</td>
                <td class="c2">title</td>
                <td class="c3">id</td>
                <td class="c4">view</td>
                <td class="c5">like</td>
                <td class="c6">date</td>
            </tr>
            <%
            BoardDAO dao = BoardDAO.getInstance();
            ArrayList<BoardDTO> list = dao.getBoard();
            
            for(int i=list.size()-1; i>=0; i--){
            	BoardDTO e = list.get(i);
            	int code = e.getCode();
            	String title = e.getTitle();
            	String id = e.getId();
            	int view = e.getView();
            	int like = e.getLike();
            	Timestamp date = e.getDate();
            	
            	%>
            	<tr>
                <td class="c1"><%=code %></td>
                <td class="c2"><a href="_18_boardView.jsp?code=<%=code%>"><%=title %></a></td>
                <td class="c3"><%=id %></td>
                <td class="c4"><%=view %></td>
                <td class="c5"><%=like %></td>
                <td class="c6"><%=date %></td>
            	</tr>
            <%} %>
        </table>
    </div>
</body>
</html>