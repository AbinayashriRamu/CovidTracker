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
			<form:form action="addPatient" method="post"
				modelAttribute="addpatientid">
				<div>
					<label for="patientName">patientName</label>
					<div>
						<form:input path="patientName" />
					</div>
				</div>
				<div>
					<label for=aadharNo>aadharNo</label>
					<div>
						<form:input path="aadharNo" />
					</div>
				</div>
				<div>
					<label for="street">street</label>
					<div>
						<form:input path="street" />
					</div>
				</div>
				<div>
					<label for="locationId">locationId</label>
					<div>
						<form:input path="locationId" />
					</div>
				</div>
				<div>
					<label for="bloodGroup">bloodGroup</label>
					<div>
						<form:input path="bloodGroup" />
					</div>
				</div>
				<div>
					<label for="phoneNo">phoneNo</label>
					<div>
						<form:input path="phoneNo" />
					</div>
				</div>
				<div>
					<label for="testResult">testResult</label>
					<div>
						<form:input path="testResult" />
					</div>
				</div>
				<div>
					<label for="activeStatus">activeStatus</label>
					<div>
						<form:input path="activeStatus" />
					</div>
				</div>
				<div>
					<label for="deadDate">deadDate</label>
					<div>
						<form:input path="deadDate" />
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
