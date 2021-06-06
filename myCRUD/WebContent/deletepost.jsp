<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.crud.dao.BoardDAO, com.crud.bean.BoardVO"%>
<%
	String sid = request.getParameter("id");
	if (sid != ""){  
		// if sid is not empty then 
		int id = Integer.parseInt(sid);
		//your get the string sid and change it to integer id
		BoardVO u = new BoardVO();
		// u is a nwe created board.
		u.setSeq(id);
		// thesequence of u is set to the parsed integer id.
		BoardDAO boardDAO = new BoardDAO();
		boardDAO.deleteBoard(u);
	}
	response.sendRedirect("posts.jsp");
	//리다이렉트는 웹 서버 측에서 어떤 페이지로 이동하라고 지정하는 것이다. 
%>