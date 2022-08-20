<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<style>
<%@include file="/WEB-INF/css/find-patient-admit-form.css"%>
</style>
<meta charset="ISO-8859-1">
<title>Find patient admit Detail</title>

</head>
<body>
	<h1>Admit Detail</h1>
	<div id="root">
		<div id="form" class="box">
			<form:form action="" method="get" modelAttribute="getPatientAdmits">
				<div>
					<label for="admitId">AdmitId</label>
					<div>
						<form:input path="admitId" readonly="true" />
					</div>
				</div>
				<div>
					<label for="aadharNumber">AadharNumber</label>
					<div>
						<form:input path="aadharNumber" readonly="true" />
					</div>
				</div>
				<div>
					<label for="centreId">CentreId</label>
					<div>
						<form:input path="centreId" readonly="true" />
					</div>
				</div>
				<div>
					<label for="staffId">StaffId</label>
					<div>
						<form:input path="staffId" readonly="true" />
					</div>
				</div>
				<div>
					<label for="admitDate">AdmitDate</label>
					<div>
						<form:input path="admitDate" readonly="true" />
					</div>

				</div>
				<div>
					<label for="dischargeDate">DischargeDate</label>
					<div>
						<form:input path="dischargeDate" readonly="true" />
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