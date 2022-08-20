<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<style>
<%@include file="/WEB-INF/css/find-Patient-detail-form.css"%>
</style>
<meta charset="ISO-8859-1">
<title>Find Patient Detail</title>

</head>
<body>
	<h1>Patient Detail</h1>
	<div id="root">
		<div id="form" class="box">
			<form:form action="" method="get" modelAttribute="getPatientDetails">
				<div>
					<label for="patientName">PatientName</label>
					<div>
						<form:input path="patientName" readonly="true" />
					</div>
				</div>
				<div>
					<label for="aadharNumber">AadharNumber</label>
					<div>
						<form:input path="aadharNumber" readonly="true" />
					</div>
				</div>
				<div>
					<label for="street">Street</label>
					<div>
						<form:input path="street" readonly="true" />
					</div>
				</div>
				<div>
					<label for="pinCode">PinCode</label>
					<div>
						<form:input path="pinCode" readonly="true" />
					</div>
				</div>
				<div>
					<label for="bloodGroup">BloodGroup</label>
					<div>
						<form:input path="bloodGroup" readonly="true" />
					</div>
				</div>
				<div>
					<label for="phoneNo">PhoneNo</label>
					<div>
						<form:input path="phoneNo" readonly="true" />
					</div>
				</div>
				<div>
					<label for="lastTestId">LastTestId</label>
					<div>
						<form:input path="lastTestId" readonly="true" />
					</div>
				</div>
				<div>
					<label for="activeStatus">ActiveStatus</label>
					<div>
						<form:input path="activeStatus" readonly="true" />
					</div>
				</div>
				<div>
					<label for="deadDate">DeadDate</label>
					<div>
						<form:input path="deadDate" readonly="true" />
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