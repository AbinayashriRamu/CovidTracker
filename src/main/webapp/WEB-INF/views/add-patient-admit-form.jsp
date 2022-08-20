<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<style>
<%@include file="/WEB-INF/css/add-patient-admit-form.css"%>
</style>
<meta charset="ISO-8859-1">
<title>Add patient admit</title>

</head>
<body>
	<h1>Patient Admit</h1>
	<a href="/patientadmitdetail/patientadmitlist">
		<button id="btn">List</button>
	</a>
	<div id="root">
		<div id="form" class="box">
			<form:form action="addpatientadmit" method="post"
				modelAttribute="addPatientAdmits">

				<div>
					<label for=aadharNumber>AadharNumber</label>
					<div>
						<form:input path="aadharNumber" class="text-box"
							title="Id must be required" required="true" />
					</div>
				</div>
				<div>
					<label for="centreId">CentreId</label>
					<div>
						<form:input path="centreId" class="text-box"
							placeholder="CentreId" title="Id must be required"
							required="true"/>
							
					</div>
				</div>
				<div>
					<label for="staffId">StaffId</label>
					<div>
						<form:input path="staffId" class="text-box" placeholder="StaffId"
							title="Id must be required" required="true"/>
							
						
					</div>
				</div>
				<div>
					<label for="admitDate">AdmitDate</label>
					<div>
						<form:input path="admitDate" type="date" />
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
