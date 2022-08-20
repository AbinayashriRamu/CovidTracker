<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<style>
<%@include file="/WEB-INF/css/find-by-id-centre-location-form.css"%>
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="grid-container">
		<div class="root">
			<div id="form">
				<h1>Centre Detail</h1>
				<form:form action="" method="post" modelAttribute="fetchByCentrId">
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
						<label for="contactPersonName">Contact Person Phone Number</label>
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
				</form:form>
			</div>
		</div>
		<div class="root">
			<div id="form">
				<h1>Location</h1>
				<form:form action="" method="post"
					modelAttribute="fetchCentreloctionById">
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
				</form:form>
			</div>
			<button onclick="history.back()">Go Back</button>
		</div>
</body>
</html>