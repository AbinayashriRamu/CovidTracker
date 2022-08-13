<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update patient id</title>

</head>
<body>
	<div id="root">
		<div id="form">
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
						<form:input path="aadharNumber" />
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
						<form:input path="activeStatus" />
					</div>
				</div>
				<div>
					<label for="deadDate">DeadDate</label>
					<div>
						<form:input path="deadDate" />
					</div>
				</div>
				<div>
					<form:button>Update patient</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>