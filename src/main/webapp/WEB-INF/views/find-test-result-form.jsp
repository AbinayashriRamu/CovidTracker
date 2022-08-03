<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find Test Detail</title>

</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="" method="post" modelAttribute="getTestResults">
				<div>
					<label for="testId">testId</label>
					<div>
						<form:input path="testId" readonly="true" />
					</div>
				</div>
				<div>
					<label for="testingDate">testingDate</label>
					<div>
						<form:input path="testingDate" readonly="true" />
					</div>
				</div>
				<div>
					<label for="testResult">testResult</label>
					<div>
						<form:input path="testResult" readonly="true" />
					</div>
				</div>
				<div>
					<label for="aadharNo">aadharNo</label>
					<div>
						<form:input path="aadharNo" readonly="true" />
					</div>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>