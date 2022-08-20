<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<style>
<%@include file="/WEB-INF/css/find-location-form.css"%>
</style>
<meta charset="ISO-8859-1">
<title>Find Location Detail</title>

</head>
<body>
	<h1>Location Detail</h1>
	<div id="root">
		<div id="form" class="box">
			<form:form action="" method="get" modelAttribute="getLocations">
				<div>
					<label for="district">District</label>
					<div>
						<form:input path="district" readonly="true" />
					</div>
				</div>
				<div>
					<label for="pinCode">PinCode</label>
					<div>
						<form:input path="pinCode" readonly="true" />
					</div>

				</div>
				<div>
					<label for="stateName">StateName</label>
					<div>
						<form:input path="stateName" readonly="true" />
					</div>
				</div>
				<div>
					<label for="country">Country</label>
					<div>
						<form:input path="country" readonly="true" />
					</div>
				</div>
				<br>
			</form:form>
			<a href="/home/ForAllTables">
				<button class="btn">Back</button>
			</a>
		</div>
	</div>

</body>
</html>