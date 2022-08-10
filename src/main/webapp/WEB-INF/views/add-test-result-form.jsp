<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
					<label for="testId">TestId</label>
					<div>
						<form:input path="testId" />
					</div>
				</div>
				<div>
					<label for="testingDate">TestingDate</label>
					<div>
						<form:input path="testingDate" />
					</div>
				</div>
				<div>
					<label for="testResult">TestResult</label>
					<div>
						<form:input path="testResult" />
					</div>
				</div>
				<div>
					<label for="aadharNumber">Aadhar Number</label>
					<div>
						<form:input path="aadharNumber" />
					</div>
				</div>
				<div>
					<label for="testBy">TestBy</label>
					<div>
						<form:input path="testBy" />
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
