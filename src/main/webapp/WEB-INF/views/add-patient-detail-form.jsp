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
						<form:input path="patientName"/>
					</div>
				</div>
				<div>
					<label for="aadharNumber">AadharNumber</label>
					<div>
						<form:input path="aadharNumber"  />
					</div>
				</div>
				<div>
					<label for="street">Street</label>
					<div>
						<form:input path="street"  />
					</div>
				</div>
				<div>
					<label for="pinCode">PinCode</label>
					<div>
						<form:input path="pinCode"  />
					</div>
				</div>
				<div>
					<label for="bloodGroup">BloodGroup</label>
					<div>
						<form:input path="bloodGroup"  />
					</div>
				</div>
				<div>
					<label for="phoneNo">PhoneNo</label>
					<div>
						<form:input path="phoneNo"  />
					</div>
				</div>
				<div>
					<label for="lastTestId">Last Test Id</label>
					<div>
						<form:input path="lastTestId"  />
					</div>
				</div>
				<div>
					<label for="activeStatus">Active Status</label>
					<div>
						<form:input path="activeStatus"  />
					</div>
				</div>
				<div>
					<label for="deadDate">Dead Date</label>
					<div>
						<form:input path="deadDate"  />
					</div>
				</div>

				<div>
					<form:button>Add New</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>
