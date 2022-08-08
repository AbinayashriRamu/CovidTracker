<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update patient</title>

</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="updatepatientsymptom" method="post"
				modelAttribute="updatePatientSymptoms">
				<div>
					<label for="aadharNo">aadharNo</label>
					<div>
						<form:input path="aadharNo" />
					</div>
				</div>
				<div>
					<label for="observationDate">observationDate</label>
					<div>
						<form:input path="observationDate" />
					</div>
				</div>
				<div>
					<label for="observationId">observationId</label>
					<div>
						<form:input path="observationId" />
					</div>
				</div>
				<div>
					<label for="observatedBy">observatedBy</label>
					<div>
						<form:input path="observatedBy" />
					</div>
				</div>
				<div>
					<label for=temperature>temperature</label>
					<div>
						<form:input path="temperature" />
					</div>
				</div>
				<div>
					<label for="cold">cold</label>
					<div>
						<form:input path="cold" />
					</div>
				</div>
				<div>
					<label for="cough">cough</label>
					<div>
						<form:input path="cough" />
					</div>
				</div>
				<div>
					<label for=smell>smell</label>
					<div>
						<form:input path="smell" />
					</div>
				</div>
				<div>
					<label for="taste">taste</label>
					<div>
						<form:input path="taste" />
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