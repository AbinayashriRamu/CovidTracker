<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add patient</title>

</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="addpatient" method="post"
				modelAttribute="addPatientDetails">
				<div>
					<label for="patientName">Patient Name</label>
					<div>
						<form:input path="patientName" title="Id must be required"
							required="true" />
					</div>
				</div>
				<form:errors path="patientName" cssClas="text-danger"></form:errors>
				<div>
					<label for="aadharNumber">AadharNumber</label>
					<div>
						<form:input path="aadharNumber" title="Id must be required"
							required="true" />
					</div>
				</div>
				<form:errors path="aadharNumber" cssClas="text-danger"></form:errors>
				<div>
					<label for="street">Street</label>
					<div>
						<form:input path="street" title="Id must be required"
							required="true" />
					</div>
				</div>
				<form:errors path="street" cssClas="text-danger"></form:errors>
				<div>
					<label for="pinCode">PinCode</label>
					<div>
						<form:select path="pinCode" class="text-box" placeholder="PinCode"
							title="Id must be required" required="true">
							<form:option value="641654">641654</form:option>
							<form:option value="600311">600311</form:option>
							<form:option value="600032">600032</form:option>
						</form:select>
					</div>
				</div>
				<form:errors path="pinCode" cssClas="text-danger"></form:errors>
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
				<form:errors path="bloodGroup" cssClas="text-danger"></form:errors>
				<div>
					<label for="phoneNo">PhoneNo</label>
					<div>
						<form:input path="phoneNo" title="Id must be required"
							required="true" />
					</div>
				</div>
				<form:errors path="phoneNo" cssClas="text-danger"></form:errors>
				<div>
					<label for="lastTestId">Last Test Id</label>
					<div>
						<form:input path="lastTestId" title="Id must be required"
							required="true" />
					</div>
				</div>
				<form:errors path="lastTestId" cssClas="text-danger"></form:errors>
				<div>
					<label for="activeStatus">Active Status</label>
					<div>
						<form:select path="activeStatus" class="text-box"
							placeholder="ActiveStatus" title="Id must be required"
							required="true">
							<form:option value="Alive">Alive</form:option>
							<form:option value="Dead">Dead</form:option>
						</form:select>
					</div>
				</div>
				<form:errors path="activeStatus" cssClas="text-danger"></form:errors>
				<div>
					<form:button>Add New</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>
