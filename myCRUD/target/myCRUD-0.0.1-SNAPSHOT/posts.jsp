<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.crud.dao.BoardDAO, com.crud.bean.BoardVO,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>free board</title>
<!-- This is the title of the page that shows all the posts -->
<style>
#list {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}
#list td, #list th {
  border: 1px solid #ddd;
  padding: 8px;
  text-align:center;
}
#list tr:nth-child(even){background-color: #f2f2f2;}
#list tr:hover {background-color: #ddd;}
<%-- This is the style from table row. Even number cells will have the background color #f2f2
and when the mouse is hovered over, it will have the background color #ddd--%>
#list th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: center;
  background-color: #006bb3;
  color: white;
}
<%-- This is the style for table header--%>
</style>
<script>
	function delete_ok(id){
		var a = confirm("정말로 삭제하겠습니까?");
		if(a) location.href='deletepost.jsp?id=' + id;
	}
	// this is the function for delete.if confirm is pressed, then deletepost.jsp 로 가고 id 는 삭제하고 싶은ㄴ 의 sequence 가 패스 
</script>
</head>
<body>
<h1>자유게시판</h1>
<%
	BoardDAO boardDAO = new BoardDAO();
	List<BoardVO> list = boardDAO.getBoardList();
	request.setAttribute("list",list);
%>
<table id="list" width="90%">
<tr>
	<th>Id</th>
	<th>Category</th>
	<th>Title</th>
	<th>Writer</th>
	<th>Content</th>
	<th>Regdate</th>
	<th>Edit</th>
	<th>Delete</th>
</tr>
<!--  이 테이블 안에 헤더들 -->
<c:forEach items="${list}" var="u">
	<tr>
		<td>${u.getSeq()}</td>
		<td>${u.getCategory()}</td>
		<td>${u.getTitle()}</td>
		<td>${u.getWriter()}</td>
		<td>${u.getContent()}</td>
		<td>${u.getRegdate()}</td>
		<!--  This gets an item from the list and sets the Title, the sequence, the writer
		based on the item's properties that were given / posted by the user -->
		<td><a href="editform.jsp?id=${u.getSeq()}">Edit</a></td>
		<%-- 이거는 수정하는 기능을 가진 버튼. 누르면 editform.jsp 로 이동한--%>
		<td><a href="javascript:delete_ok('${u.getSeq()}')">Delete</a></td>
		<%-- 이거는 삭하는 기능을 가진 버튼. 누르면 위에 있는 delete_ok 로 이동--%>
	</tr>
</c:forEach>
</table>
<br/><a href="addpostform.jsp">Add New Post</a>
<!-- 맨 밑에 new post 추가하 라는버튼 있음.누르면 addpostform.jsp 로 이동 -->
</body>
</html>