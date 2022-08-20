<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<style>
<%@include file="/WEB-INF/css/find-test-result-form.css"%>
</style>
<meta charset="ISO-8859-1">
<title>Find Test Detail</title>

</head>
<body>
	<h1>Get Test Detail</h1>
	<div id="root">
		<div id="form" class="box">
			<form:form action="" method="get" modelAttribute="getTestResults">
				<div>
					<label for="testId">TestId</label>
					<div>
						<form:input path="testId" readonly="true" />
					</div>
				</div>
				<div>
					<label for="testingDate">TestingDate</label>
					<div>
						<form:input path="testingDate" readonly="true" />
					</div>
				</div>
				<div>
					<label for="testResult">TestResult</label>
					<div>
						<form:input path="testResult" readonly="true" />
					</div>
				</div>
				<div>
					<label for="aadharNumber">AadharNumber</label>
					<div>
						<form:input path="aadharNumber" readonly="true" />
					</div>
				</div>
				<div>
					<label for="testBy">TestBy</label>
					<div>
						<form:input path="testBy" />
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