<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<style>
<%@include file="/WEB-INF/css/add-location-form.css"%>
</style>
<meta charset="ISO-8859-1">
<title>Add location</title>

</head>

<body>
	<h1>Patient Location</h1>
	<a href="/locationdetail/locationlist">
		<button id="btn">List</button>
	</a>
	<div id="root">
		<div id="form" class="box">
			<form:form action="addlocation" method="post"
				modelAttribute="addlocations">
				<div>
					<label for=district>District</label>
					<div>
						<form:input path="district" class="text-box"
							placeholder="District" title="Id must be required"
							pattern="^[a-zA-Z]+$" required="true" />

					</div>
				</div>
				<form:errors path="district" Class="text-danger"></form:errors>
				<div>
					<label for="pinCode">PinCode</label>
					<div>
						<div>
							<form:input path="pinCode" class="text-box" placeholder="PinCode"
								title="Id must be required" required="true" />


						</div>
					</div>
					<form:errors path="pinCode" Class="text-danger"></form:errors>
				</div>
				<div>
					<label for="stateName">StateName</label>
					<div>
						<div>
							<form:input path="stateName" class="text-box"
								placeholder="StateName" title="Id must be required"
								pattern="^[a-zA-Z]+$" required="true" />


						</div>
					</div>
					<form:errors path="stateName" Class="text-danger"></form:errors>
				</div>
				<div>
					<label for="country">Country</label>
					<div>
						<div>
							<form:input path="country" class="text-box" placeholder="Country"
								pattern="^[a-zA-Z]+$" title="Id must be required"
								required="true" />

						</div>
					</div>
					<form:errors path="country" Class="text-danger"></form:errors>
				</div>
				<br>
				<div>
					<form:button id="log">Add New</form:button>
					<button id="log" onclick="history.back()">Go Back</button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>






