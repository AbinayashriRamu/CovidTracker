<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>patient location</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="" method="post" modelAttribute="fetchByaadharNo">
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
				<div>
					<label for="street">street</label>
					<div>
						<form:input path="street" readonly="true" />
					</div>
				</div>
			</form:form>
		</div>
	</div>
	<div id="root">
		<div id="form">
			<form:form action="" method="post"
				modelAttribute="fetchPatientloctionById">
				<div>
					<label for="district">district</label>
					<div>
						<form:input path="district" readonly="true" />
					</div>
				</div>
				<div>
					<label for="pinCode">pinCode</label>
					<div>
						<form:input path="pinCode" readonly="true" />
					</div>

				</div>
				<div>
					<label for="stateName">stateName</label>
					<div>
						<form:input path="stateName" readonly="true" />
					</div>
				</div>
				<div>
					<label for="country">country</label>
					<div>
						<form:input path="country" readonly="true" />
					</div>
				</div>
			</form:form>
		</div>
	</div>

</body>
</html>