<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<a href="/dojos/new">create a new dojo!</a> | <a href="/ninjas/new">create a new Ninja!</a>
	
	<hr>
	
	<c:forEach items="${dojos}" var="dojo">
		<h3><c:out value="${dojo.getName()}"></c:out></h3>
		<c:forEach items="${dojo.getNinjas()}"  var="nin">
			<p><c:out value="${nin.getFirstName()}"></c:out></p>
		</c:forEach>
		<hr />
	</c:forEach>

</body>
</html>