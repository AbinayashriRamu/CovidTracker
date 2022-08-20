<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<style type="text/css">
<%@include file="/WEB-INF/css/login-user-form.css"%>
</style>
<meta charset="ISO-8859-1">
<title>LogIn User</title>
</head>
<body>
	<h1>Login</h1>
	<div class="box">
		<div id="form">
			<form:form action="checklogin" method="post"
				modelAttribute="userLogin">
				<div>
					<label for="email">Email</label>
					<div>
						<form:input path="email" class="text-box" />
					</div>
				</div>
				<div>
					<label for="password">Password</label>
					<div>
						<form:input path="password" class="text-box" />
					</div>
				</div>
				<br>
				<form:button id="log">Login</form:button>
			</form:form>
		</div>

	</div>


</body>
</html>