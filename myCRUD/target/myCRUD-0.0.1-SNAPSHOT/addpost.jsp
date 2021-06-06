<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.crud.dao.BoardDAO"%>

<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="u" class="com.crud.bean.BoardVO" />
<jsp:setProperty property="*" name="u"/>

<%
	BoardDAO boardDAO = new BoardDAO();
//새로운 보드를 만든다. 
	int i = boardDAO.insertBoard(u);
	String msg = "데이터 추가 성공 !";
	if(i == 0) msg = "[에러] 데이터 삭제 ";
	//i가 0이 제대로 추가가 되지 않았다는 뜻. i 가 1 이면 추가가 됐다는 뜻. i 의 
%>

<script>
	alert('<%=msg%>');
	//msg 를 가진aler을 뛰운다. 
	location.href='posts.jsp';
	//location.href 는 적혀있는 posts.jsp 로 return 해준다. 
</script>