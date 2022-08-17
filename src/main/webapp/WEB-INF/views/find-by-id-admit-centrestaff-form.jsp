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
	grid-template-columns: auto auto auto auto;
	grid-gap: 15px;
	background-color: blue;
	padding: 10px;
}

.grid-container>div {
	background-color: rgba(255, 255, 255, 0.8);
	text-align: center;
	padding: 20px 0;
	font-size: 20px;
}
</style>
<meta charset="ISO-8859-1">
<title>admit patient centre staff</title>
</head>
<body>

	<div class="grid-container">
		<div class="root">
			<div id="form">
				<h1>Patient Details</h1>
				<form:form action="" method="post"
					modelAttribute="fetchPatientDetailById">
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
				</form:form>
			</div>
		</div>
		<div class="root">
			<div id="form">
				<h1>Admit Detail</h1>
				<form:form action="" method="post" modelAttribute="fetchByAdmitId">
					<div>
						<label for="admitId">AdmitId</label>
						<div>
							<form:input path="admitId" readonly="true" />
						</div>
					</div>
					<div>
						<label for="aadharNumber">AadharNumber</label>
						<div>
							<form:input path="aadharNumber" readonly="true" />
						</div>
					</div>
					<div>
						<label for="centreId">CentreId</label>
						<div>
							<form:input path="centreId" readonly="true" />
						</div>
					</div>
					<div>
						<label for="staffId">StaffId</label>
						<div>
							<form:input path="staffId" readonly="true" />
						</div>
					</div>
					<div>
						<label for="admitDate">AdmitDate</label>
						<div>
							<form:input path="admitDate" readonly="true" />
						</div>

					</div>
					<div>
						<label for="dischargeDate">DischargeDate</label>
						<div>
							<form:input path="dischargeDate" readonly="true" />
						</div>
					</div>
				</form:form>
			</div>
		</div>
		<div class="root">
			<div id="form">
				<h1>Admit Staff Detail</h1>
				<form:form action="" method="post"
					modelAttribute="fetchStaffAdmitById">
					<div>
						<label for="centreId">CentreId</label>
						<div>
							<form:input path="centreId" readonly="true" />
						</div>
					</div>
					<div>
						<label for="staffName">staffId</label>
						<div>
							<form:input path="staffName" readonly="true" />
						</div>
					</div>
					<div>
						<label for="staffId">staffRole</label>
						<div>
							<form:input path="staffId" readonly="true" />
						</div>
					</div>
					<div>
						<label for="staffRole">staffRole</label>
						<div>
							<form:input path="staffRole" readonly="true" />
						</div>
					</div>
					<div>
						<label for="staffGender">staffGender</label>
						<div>
							<form:input path="staffGender" readonly="true" />
						</div>
					</div>
					<div>
						<label for="staffDateOfBirth">staffDateOfBirth</label>
						<div>
							<form:input path="staffDateOfBirth" readonly="true" />
						</div>
					</div>
				</form:form>
			</div>
		</div>
		<div class="root">
			<div id="form">
				<h1>Admit Centre Detail</h1>
				<form:form action="" method="post"
					modelAttribute="fetchCentreAdmitById">
					<div>
						<label for="centreId">CentreId</label>
						<div>
							<form:input path="centreId" readonly="true" />
						</div>
					</div>
					<div>
						<label for="centreName">centreName</label>
						<div>
							<form:input path="centreName" readonly="true" />
						</div>
					</div>
					<div>
						<label for="pinCode">pinCode</label>
						<div>
							<form:input path="pinCode" readonly="true" />
						</div>
					</div>
					<div>
						<label for="contactPersonName">ContactPersonPhoneNumber</label>
						<div>
							<form:input path="contactPersonName" readonly="true" />
						</div>
					</div>
					<div>
						<label for="contactPersonPhoneNo">ContactPersonPhoneNumber</label>
						<div>
							<form:input path="contactPersonPhoneNo" readonly="true" />
						</div>
					</div>
				</form:form>
			</div>
			<li><a href="/home/ForViewList">Back</a>
		</div>
</body>
</html>