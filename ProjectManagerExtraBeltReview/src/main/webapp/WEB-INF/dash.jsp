<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="/css/style.css">
<title>Project Manager</title>
</head>
<body>

<h1>Project Manager</h1>

<container>
<form:form action="/register" method="post" modelAttribute="newUser">

	<table>
		<thead>
	    	<tr>
	            <td colspan="2">Register</td>
	        </tr>
	    </thead>
	    
	    <thead>
	    
	    	<tr>
	            <td class="float-left">Nome</td>
	            <td class="float-left">
	            	<form:errors path="firstName" class="text-danger"/>
					<form:input class="input" path="firstName"/>
	            </td>
	        </tr>
	        <tr>
	            <td class="float-left">Sobrenome</td>
	            <td class="float-left">
	            	<form:errors path="lastName" class="text-danger"/>
					<form:input class="input" path="lastName"/>
	            </td>
	        </tr>
	        <tr>
	            <td class="float-left">Email</td>
	            <td class="float-left">
	            	<form:errors path="email" class="text-danger"/>
					<form:input class="input" path="email"/>
	            </td>
	        </tr>
	        <tr>
	            <td class="float-left">Criar senha</td>
	            <td class="float-left">
	            	<form:errors path="password" class="text-danger"/>
					<form:input class="input" path="password"/>
	            </td>
	        </tr>
	        <tr>
	            <td class="float-left">Confirme </td>
	            <td class="float-left">
	            	<form:errors path="confirm" class="text-danger"/>
					<form:input class="input" path="confirm"/>
	            </td>
	        </tr>
	        <tr>
	        	<td colspan=2><input  class="button" type="submit" value="Submit"/></td>
	        </tr>
	    </thead>
	    </container>
	</table>
</form:form>
<hr>
<form:form action="/login" method="post" modelAttribute="newLogin">

	<table>
		<thead>
	    	<tr>
	            <td colspan="2">Log In</td>
	        </tr>
	    </thead>
	    <thead>
	        <tr>
	            <td class="float-left">Email</td>
	            <td class="float-left">
	            	<form:errors path="email" class="text-danger"/>
					<form:input class="input" path="email"/>
	            </td>
	        </tr>
	        <tr>
	            <td class="float-left">Senha </td>
	            <td class="float-left">
	            	<form:errors path="password" class="text-danger"/>
					<form:input class="input" path="password"/>
	            </td>
	        </tr>
	        <tr>
	        	<td colspan=2><input class="input" class="button" type="submit" value="Submit"/></td>
	        </tr>
	    </thead>
	</table>
</form:form>
</body>
</html>