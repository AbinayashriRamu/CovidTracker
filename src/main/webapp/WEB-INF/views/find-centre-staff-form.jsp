<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find Staff Detail</title>

</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="" method="post"
				modelAttribute="getAllCentreStaffs">
				<div>
					<label for="centreId">CentreId</label>
					<div>
						<form:input path="centreId" readonly="true" />
					</div>
				</div>
				<div>
					<label for="staffName">StaffId</label>
					<div>
						<form:input path="staffName" readonly="true" />
					</div>
				</div>
				<div>
					<label for="staffId">StaffRole</label>
					<div>
						<form:input path="staffId" readonly="true" />
					</div>
				</div>
				<div>
					<label for="staffRole">StaffRole</label>
					<div>
						<form:input path="staffRole" readonly="true" />
					</div>
				</div>
				<div>
					<label for="staffGender">StaffGender</label>
					<div>
						<form:input path="staffGender" readonly="true" />
					</div>
				</div>
				<div>
					<label for="staffDateOfBirth">StaffDateOfBirth</label>
					<div>
						<form:input path="staffDateOfBirth" readonly="true" />
					</div>
				</div>


			</form:form>
		</div>
	</div>
</body>
</html>