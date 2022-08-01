<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Centre</title>

</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="updateCentre" method="post"
				modelAttribute="updatecentre">
				<div>
					<label for="centreId">centreId</label>
					<div>
						<form:input path="centreId" />
					</div>
				</div>
				<div>
					<label for="centreName">centreName</label>
					<div>
						<form:input path="centreName" />
					</div>
				</div>
				<div>
					<label for="locationId">locationId</label>
					<div>
						<form:input path="locationId" />
					</div>
				</div>
				<div>
					<label for="contactPersonName">contactPersonName</label>
					<div>
						<form:input path="contactPersonName" />
					</div>
				</div>
				<div>
					<label for="contactPersonPhoneNo">contactPersonPhoneNo</label>
					<div>
						<form:input path="contactPersonPhoneNo" />
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