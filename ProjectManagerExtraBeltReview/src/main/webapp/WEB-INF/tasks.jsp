<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="/css/style.css">
<title>New Task</title>
</head>
<body>



<h2><a href="/dashboard">
<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-house-door-fill" viewBox="0 0 16 16">
  <path d="M6.5 14.5v-3.505c0-.245.25-.495.5-.495h2c.25 0 .5.25.5.5v3.5a.5.5 0 0 0 .5.5h4a.5.5 0 0 0 .5-.5v-7a.5.5 0 0 0-.146-.354L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293L8.354 1.146a.5.5 0 0 0-.708 0l-6 6A.5.5 0 0 0 1.5 7.5v7a.5.5 0 0 0 .5.5h4a.5.5 0 0 0 .5-.5z"/>
</svg></a></h2>

<h1>Project  : ${project.title}</h1>
<h5>Project Lider : ${project.lead.firstName}</h5>

<form:form action="/projects/${project.id}/tasks" method="post" modelAttribute="task">
	<table>
	    <thead>
	        <tr>
	            <td class="float-left">Add a new task </td>
	            <td class="float-left">
	            	<form:errors path="name" class="text-danger"/>
					<form:textarea rows="4" class="inputi" path="name"/>
	            </td>
	        </tr>
	        <tr>
	        	<td colspan=2><input class="input" class="button" type="submit" value="Save"/></td>
	        </tr>
	    </thead>
	</table>
</form:form>
<hr>
<c:forEach var="task" items="${tasks}">
	<h4>Added by <c:out value="${task.creator.firstName}"></c:out> at <fmt:formatDate value="${task.createdAt}" pattern="h:mm a MMMM dd"/>:</h4>
	<p><c:out value="${task.name}"></c:out></p>
</c:forEach>
</body>
</html>