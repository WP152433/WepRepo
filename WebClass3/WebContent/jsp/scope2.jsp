<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${ pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Scope 2</h1>
<form action="${ contextPath }/scope" method="post">
<input type="text" name="id">
<input type="hidden" name="pwd" value="test">
<button type="submit">전송</button>
</form>

<h1>id : <%= request.getParameter("id") %></h1>
<h1>pwd : <%= request.getParameter("pwd") %></h1>
<h1>request scope : <%= request.getAttribute("key") %></h1>
<h1>session scope : <%= session.getAttribute("key") %></h1>
<h1>application scope : <%= application.getAttribute("key") %></h1>

<hr>
<form action="${ contextPath }/jsp/scope2.jsp" method="post">
<button type="submit">전송2</button>
</form>
</body>
</html>