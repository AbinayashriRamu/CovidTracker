<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<style type="text/css">
<%@include file="/WEB-INF/css/update-patient-detail-form.css"%>
</style>
<meta charset="ISO-8859-1">
<title>Update patient id</title>

</head>
<body>
<h1>Update Patient Detail</h1>
	<div id="root">
		<div id="form" class="box">
			<form:form action="updatepatient" method="post"
				modelAttribute="updatePatientDetails">
				<div>
					<label for="patientName">PatientName</label>
					<div>
						<form:input path="patientName" />
					</div>
				</div>
				<div>
					<label for="aadharNumber">AadharNumber</label>
					<div>
						<form:input path="aadharNumber" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="street">Street</label>
					<div>
						<form:input path="street" />
					</div>
				</div>
				<div>
					<label for="pinCode">PinCode</label>
					<div>
						<form:input path="pinCode" />
					</div>
				</div>
				<div>
					<label for="bloodGroup">BloodGroup</label>
					<div>
						<form:input path="bloodGroup" />
					</div>
				</div>
				<div>
					<label for="phoneNo">PhoneNo</label>
					<div>
						<form:input path="phoneNo" />
					</div>
				</div>
				<div>
					<label for="lastTestId">LastTestId</label>
					<div>
						<form:input path="lastTestId" />
					</div>
				</div>
				<div>
					<label for="activeStatus">ActiveStatus</label>
					<div>
						<form:select path="activeStatus" class="text-box"
							placeholder="ActiveStatus" 
							required="true">
							<form:option value="Dead">Dead</form:option>
						</form:select>
					</div>
				</div>
				<div>
					<label for="deadDate">DeadDate</label>
					<div>
						<form:input path="deadDate" type="date" />
					</div>
				</div>
				<div>
					<form:button id="log">Update patient</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>