<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<style>
<%@include file="/WEB-INF/css/add-patient-detail-form.css"%>
</style>
<meta charset="ISO-8859-1">
<title>Add patient</title>

</head>
<body>

	<h1>Patient Details</h1>
	<a href="/patientdetail/patientlist">
		<button id="btn">List</button>
	</a>
	<div id="root">
		<div id="form" class="box">
			<form:form action="addpatient" method="post"
				modelAttribute="addPatientDetails">
				<div>
					<label for="patientName">Patient Name</label>
					<div>
						<form:input path="patientName" class="text-box"
							placaholder="PatientName" title="Name must be required"
							pattern="^[a-zA-Z]+$" required="true" />
					</div>
				</div>
				<form:errors path="patientName" Class="text-danger"></form:errors>
				<div>
					<label for="aadharNumber">AadharNumber</label>
					<div>
						<form:input path="aadharNumber" title="Id must be required"
							required="true" />
					</div>
				</div>
				<form:errors path="aadharNumber" Class="text-danger"></form:errors>
				<div>
					<label for="street">Street</label>
					<div>
						<form:input path="street" title="Id must be required"
							required="true" />
					</div>
				</div>
				<form:errors path="street" Class="text-danger"></form:errors>
				<div>
					<label for="pinCode">PinCode</label>
					<div>
						<form:input path="pincode" class="text-box"
                        placeholder="Enter a pincode"
                        title="Pincode must contain only numbers or it should be exactly 6 digits"
                        pattern="^[1-9][0-9]{5}$" required="true" />

							
					</div>
				</div>
				<form:errors path="pinCode" Class="text-danger"></form:errors>
				<div>
					<label for="bloodGroup">BloodGroup</label>
					<div>
						<form:select path="bloodGroup" class="text-box"
							placeholder="BloodGroup" title="Id must be required"
							required="true">
							<form:option value="A positive">A Positive</form:option>
							<form:option value="B Positive">B Positive</form:option>
							<form:option value="AB Positive">AB Positive</form:option>
							<form:option value="A Negative">A Negative</form:option>
							<form:option value="B Negative">B Negative</form:option>
							<form:option value="AB Negative">AB Negative</form:option>
							<form:option value="O positive">O Positive</form:option>
							<form:option value="O Negative">O Negative</form:option>
						</form:select>
					</div>
				</div>
				<form:errors path="bloodGroup" Class="text-danger"></form:errors>
				<div>
					<label for="phoneNo">PhoneNo</label>
					<div>
						<form:input path="phoneNo" class="text-box"
							placaholder="PhoneNumber" title="PhoneNumber must be required"
							pattern="[1-9]{1}[0-9]{9}" required="true" />
					</div>
				</div>
				<form:errors path="phoneNo" Class="text-danger"></form:errors>
				<div>
					<label for="lastTestId">Last Test Id</label>
					<div>
						<form:input path="lastTestId" title="Id must be required"
							required="true" />
					</div>
				</div>
				<form:errors path="lastTestId" Class="text-danger"></form:errors>
				<div>
					<label for="activeStatus">Active Status</label>
					<div>
						<form:select path="activeStatus" class="text-box"
							placeholder="ActiveStatus" title="Id must be required"
							required="true">
							<form:option value="Alive">Alive</form:option>
						</form:select>
					</div>
				</div>
				<form:errors path="activeStatus" cssClas="text-danger"></form:errors>
				<div>
					<form:button id="log">Add New</form:button>
					<button id="log" onclick="history.back()">Go Back</button>
				</div>
			</form:form>
		</div>
	</div>
	
</body>
</html>
