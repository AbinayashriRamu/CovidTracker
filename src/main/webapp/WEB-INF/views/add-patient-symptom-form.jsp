<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<style>
<%@include file="/WEB-INF/css/add-patient-symptom-form.css"%>
</style>
<meta charset="ISO-8859-1">
<title>patient symptom</title>

</head>
<body>
	<h1>Patient Symptoms</h1>
	<a href="/patientsymptomdetail/patientsymptomlist">
		<button id="btn">List</button>
	</a>
	<div id="root">
		<div id="form" class="box">
			<form:form action="addpatientsymptom" method="post"
				modelAttribute="addPatientSymptoms">
				<div>
					<label for="aadharNumber">AadharNumber</label>
					<div>
						<form:input path="aadharNumber" class="text-box"
							title="Id must be required" required="true" />
					</div>
				</div>
				<div>
					<label for="observationDate">ObservationDate</label>
					<div>
						<form:input type="date" path="observationDate" class="text-box" />
					</div>
				</div>
				<div>
					<label for="observatedBy">ObservatedBy</label>
					<div>
						<form:select path="observatedBy" class="text-box"
							placeholder="ObservatedBy" required="true">
							<form:option value="Nurse">Nurse</form:option>
							<form:option value="Doctor">Doctor</form:option>
						</form:select>
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
						<form:select path="cold" class="text-box" placeholder="cold">
							<form:option value="No">No</form:option>
							<form:option value="Yes">Yes</form:option>
						</form:select>
					</div>
				</div>
				<div>
					<label for="cough">Cough</label>
					<div>
						<form:select path="cough" class="text-box" placeholder="Cough"
							title="Id must be required" required="true">
							<form:option value="Yes">Yes</form:option>
							<form:option value="No">No</form:option>
						</form:select>
					</div>
				</div>
				<div>
					<label for=smell>Smell</label>
					<div>
						<form:select path="smell" class="text-box" placeholder="Smell"
							title="Id must be required" required="true">
							<form:option value="Yes">Yes</form:option>
							<form:option value="No">No</form:option>
						</form:select>
					</div>
				</div>
				<div>
					<label for="taste">Taste</label>
					<div>
						<form:select path="taste" class="text-box" placeholder="Taste">
							<form:option value="Yes">Yes</form:option>
							<form:option value="No">No</form:option>
						</form:select>
					</div>
				</div>
				<div>
					<form:button id="log">Add New</form:button>
					<button id="log" onclick="history.back()">Go Back</button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>
