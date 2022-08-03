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
			<form:form action="updatepatientcentre" method="post"
				modelAttribute="updatePatientCentreDetails">
				<div>
					<label for="aadharNo">aadharNo</label>
					<div>
						<form:input path="aadharNo" />
					</div>
				</div>
				<div>
					<label for="centreId">centreId</label>
					<div>
						<form:input path="centreId" />
					</div>
				</div>
				<div>
					<form:button>Update </form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>