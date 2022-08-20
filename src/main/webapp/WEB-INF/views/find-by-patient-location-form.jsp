<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>

<style>
<%@include file="/WEB-INF/css/find-by-patient-location-form.css"%>
</style>

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="grid-container">

		<div class="root">
			<div id="form">
				<h1>Location</h1>
				<form:form action="" method="post"
					modelAttribute="fetchPlaceByPincode">
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
		</div>

		<div id="table root">
			<h1>Patint Detail</h1>
			<div align="center">
				<table align="down">
					<caption></caption>
					<thead>
						<tr>
							<th>PatientName</th>
							<th>AadharNumber</th>
							<th>Street</th>
							<th>PinCode</th>
							<th>BloodGroup</th>
							<th>PhoneNo</th>
							<th>LastTestId</th>
							<th>ActiveStatus</th>
							<th>DeadDate</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="cen" items="${fetchAllPatientloctionById}">
							<tr>
								<td>${cen.patientName}</td>
								<td>${cen.aadharNumber}</td>
								<td>${cen.street}</td>
								<td>${cen.pinCode}</td>
								<td>${cen.bloodGroup}</td>
								<td>${cen.phoneNo}</td>
								<td>${cen.lastTestId}</td>
								<td>${cen.activeStatus}</td>
								<td>${cen.deadDate}</td>
						</c:forEach>
					</tbody>
				</table>
				<button onclick="history.back()">Go Back</button>
			</div>
		</div>
</body>
</html>