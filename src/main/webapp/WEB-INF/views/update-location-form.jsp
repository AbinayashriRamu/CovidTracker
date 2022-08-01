<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update location staff</title>

</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="updatelocation" method="post"
				modelAttribute="updateLocation">
				<div>
					<label for="locationId">locationId</label>
					<div>
						<form:input path="locationId" />
					</div>
				</div>
				<div>
					<label for="district">district</label>
					<div>
						<form:input path="district" />
					</div>
				</div>
				<div>
					<label for=pinCode>pinCode</label>
					<div>
						<form:input path="pinCode" />
					</div>
				</div>
				<div>
					<label for="stateName">stateName</label>
					<div>
						<form:input path="stateName" />
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