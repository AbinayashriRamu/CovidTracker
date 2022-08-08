<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>admit patient centre staff</title>
</head>
<body>
	<h1>Patient Details</h1>
	<div id="root">
		<div id="form">
			<form:form action="" method="post" modelAttribute="fetchPatientDetailById">
				<div>
					<label for="patientName">patientName</label>
					<div>
						<form:input path="patientName" readonly="true" />
					</div>
				</div>
				<div>
					<label for="aadharNo">aadharNo</label>
					<div>
						<form:input path="aadharNo" readonly="true" />
					</div>
				</div>
				<div>
					<label for="street">street</label>
					<div>
						<form:input path="street" readonly="true" />
					</div>
				</div>
				<div>
					<label for="pinCode">pinCode</label>
					<div>
						<form:input path="pinCode" readonly="true" />
					</div>
				</div>
				<div>
					<label for="bloodGroup">bloodGroup</label>
					<div>
						<form:input path="bloodGroup" readonly="true" />
					</div>
				</div>
				<div>
					<label for="phoneNo">phoneNo</label>
					<div>
						<form:input path="phoneNo" readonly="true" />
					</div>
				</div>
				<div>
					<label for="lastTestId">lastTestId</label>
					<div>
						<form:input path="lastTestId" readonly="true" />
					</div>
				</div>
				<div>
					<label for="activeStatus">activeStatus</label>
					<div>
						<form:input path="activeStatus" readonly="true" />
					</div>
				</div>
				<div>
					<label for="deadDate">deadDate</label>
					<div>
						<form:input path="deadDate" readonly="true" />
					</div>
				</div>
			</form:form>
		</div>
	</div>
	<div id="root">
		<div id="form">
		<h1>Admit Detail</h1>
			<form:form action="" method="post" modelAttribute="fetchByAdmitId">
				<div>
					<label for="admitId">admitId</label>
					<div>
						<form:input path="admitId" readonly="true" />
					</div>
				</div>
				<div>
					<label for="aadharNo">aadharNo</label>
					<div>
						<form:input path="aadharNo" readonly="true" />
					</div>
				</div>
				<div>
					<label for="centreId">centreId</label>
					<div>
						<form:input path="centreId" readonly="true" />
					</div>
				</div>
				<div>
					<label for="staffId">staffId</label>
					<div>
						<form:input path="staffId" readonly="true" />
					</div>
				</div>
				<div>
					<label for="admitDate">admitDate</label>
					<div>
						<form:input path="admitDate" readonly="true" />
					</div>

				</div>
				<div>
					<label for="dischargeDate">dischargeDate</label>
					<div>
						<form:input path="dischargeDate" readonly="true" />
					</div>
				</div>
			</form:form>
		</div>
	</div>
	<div id="root">
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
<div id="root">
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
	</div>

	
</body>
</html>