<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="org.dimigo.vo.UserVO" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
UserVO user = (UserVO) session.getAttribute("user");
%>
<%= "id: " + user.getId() + ", name: " + user.getName() + ", nickname: " + user.getNickname() %>

<h1>id : ${ user.id }</h1>
<h1>name : ${ user.name }</h1>
<h1>nickname : ${ user.nickname }</h1>

</body>
</html>