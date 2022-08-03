<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add patient admit</title>

</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="addpatientadmit" method="post"
				modelAttribute="addPatientAdmits">
				<div>
					<label for="aadharNo">aadharNo</label>
					<div>
						<form:input path="aadharNo" />
					</div>
				</div>
				<div>
					<label for=centreId>centreId</label>
					<div>
						<form:input path="centreId" />
					</div>
				</div>
				<div>
					<label for="admitDate">admitDate</label>
					<div>
						<form:input path="admitDate" />
					</div>
				</div>
				<div>
					<label for="admittedBy">admittedBy</label>
					<div>
						<form:input path="admittedBy" />
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
