<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Centre staff</title>

</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="updatetestresult" method="post"
				modelAttribute="updateTestresults">
				<div>
					<label for="testId">testId</label>
					<div>
						<form:input path="testId" />
					</div>
				</div>
				<div>
					<label for="testingDate">testingDate</label>
					<div>
						<form:input path="testingDate" />
					</div>
				</div>
				<div>
					<label for=testResult>testResult</label>
					<div>
						<form:input path="testResult" />
					</div>
				</div>
				<div>
					<label for="aadharNo">aadharNo</label>
					<div>
						<form:input path="aadharNo" />
					</div>
				</div>
				<div>
					<label for="testBy">testBy</label>
					<div>
						<form:input path="testBy" />
					</div>
				</div>
				<div>
					<form:button>Update Location</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>