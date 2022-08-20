<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<style type="text/css">
<%@include file="/WEB-INF/css/update-Test-Result-form.css"%>
</style>
<meta charset="ISO-8859-1">
<title>Update Centre staff</title>

</head>
<body>
	<h1>Update Test Result</h1>
	<div id="root">
		<div id="form" class="box">
			<form:form action="updatetestresult" method="post"
				modelAttribute="updateTestresults">
				<div>
					<label for="testId">TestId</label>
					<div>
						<form:input path="testId" readonly="true" />
					</div>
				</div>
				<div>
					<label for="testingDate">TestingDate</label>
					<div>
						<form:input path="testingDate" />
					</div>
				</div>
				<div>
					<label for=testResult>TestResult</label>
					<div>
						<form:select path="testResult" class="text-box"
							placeholder="TestResult" title="Id must be required"
							required="true">
							<form:option value="Positive">Positive</form:option>
							<form:option value="Negative">Negative</form:option>
						</form:select>
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
				<div>
					<br> <form:button id="log">Submit</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>