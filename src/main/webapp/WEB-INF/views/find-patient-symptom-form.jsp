<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<style>
<%@include file="/WEB-INF/css/find-patient-symptom-form.css"%>
</style>
<meta charset="ISO-8859-1">
<title>Find Patient Detail</title>

</head>
<body>
	<h1>Patient symptom</h1>
	<div id="root">
		<div id="form" class="box">
			<form:form action="" method="get" modelAttribute="getPatientSymptoms">
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
				<br>
			</form:form>
			<a href="/home/ForAllTables">
				<button class="btn">Back</button>
			</a>
		</div>
	</div>
</body>
</html>