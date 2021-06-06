<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session ="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
</head>
<body>
<h1> Hello world! (boardList)</h1>
<p> The time on the server is ${serverTime}.  </p>
<img src="./img/bellriver.png" width="300"/>
<table>
<c:forEach items = "${list}" var = "one">
	<tr>
		<td>${one}</td>
	 </tr>
</c:forEach>
</table>
</body>
</html>