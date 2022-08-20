<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<style>
<%@include file="/WEB-INF/css/find-centredetail-form.css"%>
</style>
<meta charset="ISO-8859-1">
<title>Find Centre id</title>

</head>
<body>
	<h1>Get Center Detail</h1>
	<div id="root">
		<div id="form" class="box">
			<form:form action="" method="get" modelAttribute="getcentres">
				<div>
					<label for="centreId">CentreId</label>
					<div>
						<form:input path="centreId" readonly="true" />
					</div>
				</div>
				<div>
					<label for="centreName">CentreName</label>
					<div>
						<form:input path="centreName" readonly="true" />
					</div>
				</div>
				<div>
					<label for="pinCode">PinCode</label>
					<div>
						<form:input path="pinCode" readonly="true" />
					</div>
				</div>
				<div>
					<label for="contactPersonName">Contact Person Name</label>
					<div>
						<form:input path="contactPersonName" readonly="true" />
					</div>
				</div>
				<div>
					<label for="contactPersonPhoneNo">Contact Person Phone
						Number</label>
					<div>
						<form:input path="contactPersonPhoneNo" readonly="true" />
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