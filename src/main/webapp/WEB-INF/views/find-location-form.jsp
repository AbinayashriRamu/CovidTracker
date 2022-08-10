<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find Location Detail</title>

</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="" method="post" modelAttribute="getLocations">
				<div>
					<label for="district">District</label>
					<div>
						<form:input path="district" readonly="true" />
					</div>
				</div>
				<div>
					<label for="pinCode">PinCode</label>
					<div>
						<form:input path="pinCode" readonly="true" />
					</div>

				</div>
				<div>
					<label for="stateName">StateName</label>
					<div>
						<form:input path="stateName" readonly="true" />
					</div>
				</div>
				<div>
					<label for="country">Country</label>
					<div>
						<form:input path="country" readonly="true" />
					</div>
				</div>
			</form:form>
		</div>
	</div>
	
</body>
</html>