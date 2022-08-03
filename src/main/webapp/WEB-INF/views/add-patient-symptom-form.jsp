<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>patient symptom</title>

</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="addpatientsymptom" method="post"
				modelAttribute="addPatientSymptoms">
				<div>
					<label for="aadharno">aadharno</label>
					<div>
						<form:input path="aadharno" />
					</div>
				</div>
				<div>
					<label for=symptomsdate>symptomsdate</label>
					<div>
						<form:input path="symptomsdate" />
					</div>
				</div>
				<div>
					<label for="temperature">temperature</label>
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
					<label for="smell">smell</label>
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
					<form:button>Add New</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>
