<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<jsp:forward page="posts.jsp" />
<!-- forward 액션 태그는 다른 페이지로 프로그램의 제어를 이동할 때 사용되는 액션 태그이다
JSP 페이지 forward 액션 태그를 만나면, 그전까지 출력 버퍼에 저장되어 있던 내용을 제거하고 forward 액션 태그가 지정하는 페이지로 이동한다.
그래서 여기는 posts.jsp 로 이동한다. -->
</body>
</html>