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
<title>Edit Project</title>
</head>
<body>

<h2><a href="/dashboard">Pagina Inicial</a></h2>

<h1>Editar o projeto</h1>

<form:form action="/projects/edit/${project.id}" method="post" modelAttribute="project">

	<table>
	    <thead>
	    	<tr>
	            <td class="float-left">Nome do Projeto		</td>
	            <td class="float-left">
	            	<form:errors path="title" class="text-danger"/>
					<form:input class="input" path="title" value="${project.title}"/>
	            </td>
	        </tr>
	        <tr>
	            <td class="float-left">Descricao </td>
	            <td class="float-left">
	            	<form:errors path="description" class="text-danger"/>
					<form:textarea rows="4" class="input" path="description" value="${project.description}"/>
	            </td>
	        </tr>
	        <tr>
	            <td class="float-left">Data final</td>
	            <td class="float-left">
	            	<form:errors path="dueDate" class="text-danger"/>
					<form:input path="dueDate" type="date" value="${project.dueDate}"/>
	            </td>
	        </tr>
	        <tr>
	        	<td colspan=2><input class="input" class="button" type="submit" value="Salvar"/></td>
	        </tr>
	    </thead>
	</table>
</form:form>
</body>
</html>