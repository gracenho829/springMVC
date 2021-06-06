<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.crud.dao.BoardDAO"%>

<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="u" class="com.crud.bean.BoardVO" />
<!--  데이터를 표시하는데 사용되는 클라스 데이터를 저장하는 필드, 데이터를 읽어올 때 사용하는 메서드, 값을 저장할 때 사용하는 메서드로 구성된다
 -->
<jsp:setProperty property="*" name="u"/>
<!-- 자바빈 프로퍼티를 변경할 수 있다 -->
<!-- property 속성의 값을 '*'로 지정하면 각각의 프로퍼티의 값을 같은 이름을 갖는 파라미터의 값을 설정한다 -->
<%
	BoardDAO boardDAO = new BoardDAO();
	int i=boardDAO.updateBoard(u);
//
	response.sendRedirect("posts.jsp");
%>