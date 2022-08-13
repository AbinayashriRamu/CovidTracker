<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Test result</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="addtestresult" method="post"
				modelAttribute="addTestResults">
				<div>
					<label for="testingDate">TestingDate</label>
					<div>
						<form:input type="date" path="testingDate" />
					</div>
				</div>
				<form:errors path="testingDate" cssClas="text-danger"></form:errors>
				<div>
					<label for="aadharNumber">Aadhar Number</label>
					<div>
						<form:input path="aadharNumber" class="text-box"
							title="Id must be required" required="true" />
					</div>
				</div>
				<form:errors path="aadharNumber" cssClas="text-danger"></form:errors>
				<div>
					<label for="testBy">TestBy</label>
					<div>
						<form:input path="testBy" class="text-box"
							title="Id must be required" required="true" />
					</div>
				</div>
				<form:errors path="testBy" cssClas="text-danger"></form:errors>
				<div>
					<label for=testResult>TestResult</label>
					<div>
						<form:input path="testResult" />
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
