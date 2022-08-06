<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find Centre id</title>

</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="" method="post" modelAttribute="getcentres">
				<div>
					<label for="centreId">CentreId</label>
					<div>
						<form:input path="centreId" readonly="true" />
					</div>
				</div>
				<div>
					<label for="centreName">centreName</label>
					<div>
						<form:input path="centreName" readonly="true" />
					</div>
				</div>
				<div>
					<label for="pinCode">pinCode</label>
					<div>
						<form:input path="pinCode" readonly="true" />
					</div>
				</div>
				<div>
					<label for="hospitalCity">hospitalCity</label>
					<div>
						<form:input path="hospitalCity" readonly="true" />
					</div>
				</div>
				<div>
					<label for="contactPersonName">ContactPersonPhoneNumber</label>
					<div>
						<form:input path="contactPersonName" readonly="true" />
					</div>
				</div>
				<div>
					<label for="contactPersonPhoneNo">ContactPersonPhoneNumber</label>
					<div>
						<form:input path="contactPersonPhoneNo" readonly="true" />
					</div>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>