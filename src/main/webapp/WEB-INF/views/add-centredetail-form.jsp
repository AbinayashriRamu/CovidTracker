<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<style>
<%@include file="/WEB-INF/css/add-centredetail-form.css"%>
</style>
<meta charset="ISO-8859-1">
<title>Add Centre</title>
</head>
<body>
	<h1>Centre Detail</h1>
	<a href="/centredetail/centrelist">
		<button id="btn">List</button>
	</a>
	<div id="root">
		<div id="form" class="box">
			<form:form action="addcentre" method="post"
				modelAttribute="addcentres">
				<div>
					<label for="centreName">Centre Name</label>
					<div>
						<form:input path="centreName" class="text-box"
							placaholder="CentreName" title="Name must be required"
							pattern="^[a-zA-Z]+$" required="true" />
					</div>
				</div>
				<form:errors path="centreName" Class="text-danger"></form:errors>
				<div>
					<label for="pinCode">PinCode</label>
					<div>
						<form:input path="pinCode" class="text-box" placeholder="PinCode"
							title="Id must be required" required="true"/>
					</div>
				</div>
				<form:errors path="pinCode" Class="text-danger"></form:errors>
				<div>
					<label for="contactPersonName">Contact Person Name</label>
					<div>
						<form:input path="contactPersonName" class="text-box"
							placaholder="ContactPersonName" title="Name must be required"
							pattern="^[a-zA-Z]+$" required="true" />
					</div>
				</div>
				<form:errors path="contactPersonName" Class="text-danger"></form:errors>
				<div>
					<label for="contactPersonPhoneNo">Contact Person PhoneNo</label>
					<div>
						<form:input path="contactPersonPhoneNo" class="text-box"
							placaholder="contactPersonPhoneNo"
							title="PhoneNumber must be required" pattern="[1-9]{1}[0-9]{9}"
							required="true" />
					</div>
				</div>
				<form:errors path="contactPersonPhoneNo" Class="text-danger"></form:errors>
				<div>
					<form:button id="log">Add New</form:button><br>
					<button id="log" onclick="history.back()">Go Back</button>
				</div>
			</form:form>
		</div>
	</div>
	
</body>
</html>
