<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find Patient Detail</title>

</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="" method="post" modelAttribute="getPatientSymptoms">
				<div>
					<label for="aadharno">aadharno</label>
					<div>
						<form:input path="aadharno" readonly="true" />
					</div>
				</div>
				<div>
					<label for="symptomsdate">symptomsdate</label>
					<div>
						<form:input path="symptomsdate" readonly="true" />
					</div>
				</div>
				<div>
					<label for="temperature">temperature</label>
					<div>
						<form:input path="temperature" readonly="true" />
					</div>
				</div>
				<div>
					<label for="cold">cold</label>
					<div>
						<form:input path="cold" readonly="true" />
					</div>
				</div>
				<div>
					<label for="cough">cough</label>
					<div>
						<form:input path="cough" readonly="true" />
					</div>
				</div>
				<div>
					<label for="smell">smell</label>
					<div>
						<form:input path="smell" readonly="true" />
					</div>
				</div>
				<div>
					<label for="taste">taste</label>
					<div>
						<form:input path="taste" readonly="true" />
					</div>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>