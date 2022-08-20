<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<style>
<%@include file="/WEB-INF/css/add-test-result-form.css"%>
</style>
<meta charset="ISO-8859-1">
<title>Add Test result</title>
</head>
<body>

	<h1>Test Result</h1>
	<a href="/testresultdetail/testresultlist">
		<button id="btn">List</button>
	</a>
	<div id="root">
		<div id="form" class="box">
			<form:form action="addtestresult" method="post"
				modelAttribute="addTestResults">
				<div>
					<label for="testingDate">TestingDate</label>
					<div>
						<form:input type="date" path="testingDate" />
					</div>
				</div>
				<form:errors path="testingDate" Class="text-danger"></form:errors>
				<div>
					<label for="aadharNumber">Aadhar Number</label>
					<div>
						<form:input path="aadharNumber" class="text-box"
							title="Id must be required" required="true" />
					</div>
				</div>
				<form:errors path="aadharNumber" Class="text-danger"></form:errors>
				<div>
					<label for=testResult>TestResult</label>
					<div>
						<form:select path="testResult" class="text-box"
							placeholder="TestResult" title="Id must be required"
							required="true">
							<form:option value="none">None</form:option>
						</form:select>
					</div>
				</div>
				<div>
					<label for="testBy">TestBy</label>
					<div>
						<form:select path="testBy" class="text-box" placeholder="TestBy"
							title="Id must be required" required="true">
							<form:option value="Doctor">Doctor</form:option>
							<form:option value="Nurse">Nurse</form:option>
							<form:option value="Labtech">LabTech</form:option>
						</form:select>
					</div>
				</div>
				<form:errors path="testBy" Class="text-danger"></form:errors>
				<div>
					<form:button id="log">Add New</form:button>
					<button id="log" onclick="history.back()">Go Back</button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>
