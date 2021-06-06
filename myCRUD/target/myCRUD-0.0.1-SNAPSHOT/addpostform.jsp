<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>Add New Post</h1>
<form action="addpost.jsp" method="post">

<table>
<tr><td>Category:</td><td><input type="text" name = "category"/></td></tr>
<!--<tr> is table row <td> is table data so table data cell-->
<tr><td>Title:</td><td><input type="text" name="title"/></td></tr>
<!-- This is the text that gets the input from the user. -->
<tr><td>Writer:</td><td><input type="text" name="writer"/></td></tr>
<!-- This gets the writer from the user-->
<tr><td>Content:</td><td><textarea cols="50" rows="5" name="content"></textarea></td></tr>
<!-- This gets the writer from the user using textarea . max 50 columns and 5 rows-->
<tr><td><a href="posts.jsp">View All Records</a></td><td align="right"><input type="submit" value="Add Post"/></td></tr>
<!-- This is the button that looks at all the records that were posted by the user. the button next to view all records adss the post. it submits a form to addpost.jsp -->
</table>
</form>

</body>
</html>