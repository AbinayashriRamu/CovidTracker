<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Centre</title>

</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="addcentre" method="post"
				modelAttribute="addcentres">
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
					<label for="pinCode">pinCode</label>
					<div>
						<form:input path="pincode" />
					</div>
				</div>
				<div>
					<div>
						<label for="hospitalCity">hospitalCity</label>
						<div>
							<form:input path="hospitalCity" />
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
						<form:button>Add New</form:button>
					</div>
			</form:form>
		</div>
	</div>
</body>
</html>
