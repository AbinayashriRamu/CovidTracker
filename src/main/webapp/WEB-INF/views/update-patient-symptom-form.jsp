<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
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
					<label for="aadharNumber">AadharNumber</label>
					<div>
						<form:input path="aadharNumber" />
					</div>
				</div>
				<div>
					<label for="observationDate">ObservationDate</label>
					<div>
						<form:input path="observationDate" />
					</div>
				</div>
				<div>
					<label for="observationId">ObservationId</label>
					<div>
						<form:input path="observationId" />
					</div>
				</div>
				<div>
					<label for="observatedBy">ObservatedBy</label>
					<div>
						<form:input path="observatedBy" />
					</div>
				</div>
				<div>
					<label for=temperature>Temperature</label>
					<div>
						<form:input path="temperature" />
					</div>
				</div>
				<div>
					<label for="cold">Cold</label>
					<div>
						<form:input path="cold" />
					</div>
				</div>
				<div>
					<label for="cough">Cough</label>
					<div>
						<form:input path="cough" />
					</div>
				</div>
				<div>
					<label for=smell>Smell</label>
					<div>
						<form:input path="smell" />
					</div>
				</div>
				<div>
					<label for="taste">Taste</label>
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