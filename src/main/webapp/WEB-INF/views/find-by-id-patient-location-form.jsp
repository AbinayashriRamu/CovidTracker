<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<style>
.grid-container {
	display: grid;
	grid-template-columns: auto auto;
	grid-gap: 15px;
	background-color: blue;
	padding: 20px;
}

.grid-container>div {
	background-color: rgba(255, 255, 255, 0.8);
	text-align: center;
	padding: 10px;
	font-size: 20px;
}
</style>
<meta charset="ISO-8859-1">
<title>patient location</title>
</head>
<body>
	<div class="grid-container">
		<div class="root">
			<div id="form">
				<h1>Patient Detail</h1>
				<form:form action="" method="post" modelAttribute="fetchByaadharNo">
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
						<label for="street">Street</label>
						<div>
							<form:input path="street" readonly="true" />
						</div>
					</div>
					<div>
						<label for="lastTestId">lastTestId</label>
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

				</form:form>
			</div>
		</div>
		<div class="root">
			<div id="form">
				<h1>Location</h1>
				<form:form action="" method="post"
					modelAttribute="fetchPatientloctionById">
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
			<li><a href="/home/ForViewList">Back</a>
		</div>
</body>
</html>