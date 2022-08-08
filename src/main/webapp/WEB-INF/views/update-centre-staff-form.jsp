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
			<form:form action="updatecentrestaff" method="post"
				modelAttribute="updatecentrestaffs">
				<div>
					<label for="centreId">centreId</label>
					<div>
						<form:input path="centreId" />
					</div>
				</div>
				<div>
					<label for="staffName">staffName</label>
					<div>
						<form:input path="staffName" />
					</div>
				</div>
				<div>
					<label for="staffId">staffId</label>
					<div>
						<form:input path="staffId" />
					</div>
				</div>
				<div>
					<label for="staffRole">staffRole</label>
					<div>
						<form:input path="staffRole" />
					</div>
				</div>
				<div>
					<label for="staffGender">staffGender</label>
					<div>
						<form:input path="staffGender" />
					</div>
				</div>
				<div>
					<label for="staffDateOfBirth">staffDateOfBirth</label>
					<div>
						<form:input path="staffDateOfBirth" />
					</div>
				</div>
				<div>
					<form:button>Update Centre Staff</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>