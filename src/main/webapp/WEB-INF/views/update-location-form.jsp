<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update location staff</title>

</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="updatelocation" method="post"
				modelAttribute="updatelocations">
				<div>
					<label for="district">District</label>
					<div>
						<form:input path="district" />
					</div>
				</div>
				<div>
					<label for=pinCode>PinCode</label>
					<div>
						<form:input path="pinCode" />
					</div>
				</div>
				<div>
					<label for="stateName">StateName</label>
					<div>
						<form:input path="stateName" />
					</div>
				</div>
				<div>
					<label for="country">Country</label>
					<div>
						<form:input path="country" />
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