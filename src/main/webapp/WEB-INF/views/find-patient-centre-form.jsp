<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find Patient centre Detail</title>

</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="" method="post" modelAttribute="getPatientCentreDetails">
				<div>
					<label for="aadharNo">aadharNo</label>
					<div>
						<form:input path="aadharNo" readonly="true" />
					</div>
				</div>
				<div>
					<label for="centreId">centreId</label>
					<div>
						<form:input path="centreId" readonly="true" />
					</div>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>