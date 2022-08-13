<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Centre staff</title>

</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="addcentrestaff" method="post"
				modelAttribute="addcentrestaffs">
				<div>
					<label for="centreId">CentreId</label>
					<div>
						<form:input path="centreId" class="text-box"
							title="Id must be required" required="true" />
					</div>
				</div>
				<form:errors path="centreId" cssClas="text-danger"></form:errors>
				<div>
					<label for="staffName">StaffName</label>
					<div>
						<form:input path="staffName" class="text-box"
							title="Id must be required" required="true" />
					</div>
				</div>
				<form:errors path="staffName" cssClas="text-danger"></form:errors>
				<div>
					<label for="staffRole">StaffRole</label>
					<div>
						<form:select path="staffRole" class="text-box"
							placeholder="staffRole" title="Id must be required"
							required="true">
							<form:option value="Doctor">Doctor</form:option>
							<form:option value="Nurse">Nurse</form:option>
							<form:option value="Labtech">LabTech</form:option>
						</form:select>
					</div>
				</div>
				<form:errors path="staffRole" cssClas="text-danger"></form:errors>
				<div>
					<label for="staffGender">StaffGender</label>
					<div>
						<form:select path="staffGender" class="text-box"
							placeholder="StaffGender" title="Id must be required"
							required="true">
							<form:option value="Male">Male</form:option>
							<form:option value="Female">Female</form:option>
						</form:select>
					</div>
				</div>
				<form:errors path="staffGender" cssClas="text-danger"></form:errors>
				<div>
					<label for="staffDateOfBirth">StaffDateOfBirth</label>
					<div>
						<form:input path="staffDateOfBirth" class="text-box" type="date"
							title="Id must be required" required="true" />
					</div>
				</div>
				<form:errors path="staffDateOfBirth" cssClas="text-danger"></form:errors>
				<div>
					<form:button>Add New</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>
