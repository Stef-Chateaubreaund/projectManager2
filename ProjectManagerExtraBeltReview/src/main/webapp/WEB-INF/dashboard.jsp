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
<title>Controle de tarefas</title>
</head>
<body>


<h3>Welcome ${user.firstName}</h3>





<p><a href="/projects/new">
<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-plus-circle" viewBox="0 0 16 16">
  <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
  <path d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z"/>
</svg></a></p>
<table>
    <thead> 
    	<tr>
    		<th>Project</th>
    		<th>Lider</th>
    		<th>Due Date</th>
    		<th>Actions</th>
    	</tr>
    </thead>
    <tbody>
    	<c:forEach var="project" items="${unassignedProjects}">
		<tr>
			<c:if test = "${project.lead.id!=user.id}">
			<td><a href="/projects/${project.id}">${project.title}</a></td>
			<td><c:out value="${project.lead.firstName}"></c:out></td>
			<td><fmt:formatDate value="${project.dueDate}" pattern="MMMM dd"/></td>
		    <td><a href="/dashboard/join/${project.id}">Join the project</a></td>
		    </c:if>
		</tr>	
		</c:forEach>
    </tbody>
</table>

<hr>
<h4>Your Projects</h4>
<table>
    <thead> 
    	<tr>
    		<th>Project</th>
    		<th>Lider</th>
    		<th>Due Date</th>
    		<th>Actions</th>
    	</tr>
    </thead>
    <tbody>
    	<c:forEach var="project" items="${assignedProjects}">
		<tr>
			<td><a href="/projects/${project.id}">${project.title}</a></td>
			<td><%-- ${project.users.size()} --%>${project.lead.firstName}</td>
			<%-- <td><c:out value="${project.lead.firstName}"></c:out></td> --%>
			<td><fmt:formatDate value="${project.dueDate}" pattern="MMMM dd"/></td>
			<c:if test = "${project.lead.id==user.id}"><!-- //checkng again for user in session --  -->
		       <td>
		       
		       
		       <a href="/projects/edit/${project.id}"  >
		       <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
  <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
  <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
</svg></a>
		   
		       <a href="/projects/delete/${project.id}">
		       <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash3" viewBox="0 0 16 16">
  <path d="M6.5 1h3a.5.5 0 0 1 .5.5v1H6v-1a.5.5 0 0 1 .5-.5ZM11 2.5v-1A1.5 1.5 0 0 0 9.5 0h-3A1.5 1.5 0 0 0 5 1.5v1H2.506a.58.58 0 0 0-.01 0H1.5a.5.5 0 0 0 0 1h.538l.853 10.66A2 2 0 0 0 4.885 16h6.23a2 2 0 0 0 1.994-1.84l.853-10.66h.538a.5.5 0 0 0 0-1h-.995a.59.59 0 0 0-.01 0H11Zm1.958 1-.846 10.58a1 1 0 0 1-.997.92h-6.23a1 1 0 0 1-.997-.92L3.042 3.5h9.916Zm-7.487 1a.5.5 0 0 1 .528.47l.5 8.5a.5.5 0 0 1-.998.06L5 5.03a.5.5 0 0 1 .47-.53Zm5.058 0a.5.5 0 0 1 .47.53l-.5 8.5a.5.5 0 1 1-.998-.06l.5-8.5a.5.5 0 0 1 .528-.47ZM8 4.5a.5.5 0 0 1 .5.5v8.5a.5.5 0 0 1-1 0V5a.5.5 0 0 1 .5-.5Z"/>
</svg></a>
		       
		    </c:if>
		    <c:if test = "${project.lead.id!=user.id}">
		       <td><a href="/dashboard/leave/${project.id}">Leave project</a></td>
		    </c:if>
		</tr>	
	</c:forEach>
    </tbody>
</table>
<p><a href="/logout">
<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-box-arrow-left" viewBox="0 0 16 16">
  <path fill-rule="evenodd" d="M6 12.5a.5.5 0 0 0 .5.5h8a.5.5 0 0 0 .5-.5v-9a.5.5 0 0 0-.5-.5h-8a.5.5 0 0 0-.5.5v2a.5.5 0 0 1-1 0v-2A1.5 1.5 0 0 1 6.5 2h8A1.5 1.5 0 0 1 16 3.5v9a1.5 1.5 0 0 1-1.5 1.5h-8A1.5 1.5 0 0 1 5 12.5v-2a.5.5 0 0 1 1 0v2z"/>
  <path fill-rule="evenodd" d="M.146 8.354a.5.5 0 0 1 0-.708l3-3a.5.5 0 1 1 .708.708L1.707 7.5H10.5a.5.5 0 0 1 0 1H1.707l2.147 2.146a.5.5 0 0 1-.708.708l-3-3z"/>
</svg></a></p>
</body>
</html>