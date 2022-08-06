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
						<form:input path="pinCode" />
					</div>
				</div>
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
					<form:button>Update centre</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>