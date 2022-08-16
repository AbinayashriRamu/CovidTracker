<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update Centre staff</title>

</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="updatecentre" method="post"
				modelAttribute="updatecentres">
				<div>
					<label for="centreId">CentreId</label>
					<div>
						<form:input path="centreId" />
					</div>
				</div>
				<div>
					<label for="centreName">CentreName</label>
					<div>
						<form:input path="centreName" title="Name must be required"
							pattern="^[a-zA-Z]+$" required="true" />
					</div>
				</div>
				<form:errors path="centreName" Class="text-danger"></form:errors>
				<div>
					<label for="pinCode">PinCode</label>
					<div>
						<form:input path="pinCode" />
					</div>
				</div>
				<form:errors path="pinCode" Class="text-danger"></form:errors>
				<div>
					<label for="contactPersonName">Contact Person Name</label>
					<div>
						<form:input path="contactPersonName" title="Name must be required"
							pattern="^[a-zA-Z]+$" required="true" />
					</div>
				</div>
				<form:errors path="contactPersonName" Class="text-danger"></form:errors>
				<div>
					<label for="contactPersonPhoneNo">Contact Person Phone No</label>
					<div>
						<form:input path="contactPersonPhoneNo"
							title="PhoneNumber must be required" pattern="[1-9]{1}[0-9]{9}"
							required="true" />
						
					</div>
				</div>
				<form:errors path="contactPersonPhoneNo" Class="text-danger"></form:errors>
				<div>
					<form:button>Update centre</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>