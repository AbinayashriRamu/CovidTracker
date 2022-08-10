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
						<form:input path="centreName" />
					</div>
				</div>
				<div>
					<label for="pinCode">PinCode</label>
					<div>
						<form:input path="pinCode" />
					</div>
				</div>
				<div>
					<label for="contactPersonName">Contact Person Name</label>
					<div>
						<form:input path="contactPersonName" />
					</div>
				</div>
				<div>
					<label for="contactPersonPhoneNo">Contact Person Phone No</label>
					<div>
						<form:input path="contactPersonPhoneNo" />
					</div>
				</div>
				<div>
					<form:button>Update centre</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>