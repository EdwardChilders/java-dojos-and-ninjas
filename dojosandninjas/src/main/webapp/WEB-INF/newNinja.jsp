<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isErrorPage="true" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Create a ninja!</h1>

	<form:form action="/ninjas/new" method="POST" modelAttribute="ninja">
		<div>
			<form:label path="firstName">First Name:</form:label>
			<form:errors path="firstName"/>
			<form:input path="firstName"/>
		</div>
		<div>
			<form:label path="lastName">Last Name:</form:label>
			<form:errors path="lastName"/>
			<form:input path="lastName"/>
		</div>
		<div>
			<form:label path="age">Age:</form:label>
			<form:errors path="age"/>
			<form:input type="number" path="age"/>
		</div>
		
		<div>
			<p>Dojo:</p>
			<form:label path="dojo"></form:label>
			<form:errors path="dojo"/>
			<form:select path="dojo">
				<option value="" disabled selected>Select a team!</option>
				<c:forEach items="${dojos}" var="dojo">
					<form:option value="${dojo.getId()}" label="${dojo.getName()}"/>
				</c:forEach>
			</form:select>
		</div>
		
		<div>
			<input type="submit" value="Create a ninja!" />
		</div>
	
	</form:form>
</body>
</html>