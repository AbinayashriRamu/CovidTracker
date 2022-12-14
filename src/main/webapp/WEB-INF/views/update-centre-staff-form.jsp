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
			<form:form action="updatecentrestaff" method="post"
				modelAttribute="abc">
				<div>
					<label for="centreId">CentreId</label>
					<div>
						<form:input path="centreId" />
					</div>
				</div>
				<div>
					<label for="staffName">StaffName</label>
					<div>
						<form:input path="staffName" class="text-box" placaholder="CentreName"
								title="Name must be required" 
								pattern="^[a-zA-Z]+$" required="true"/>
					</div>
				</div>
				<div>
					<label for="staffId">StaffId</label>
					<div>
						<form:input path="staffId" />
					</div>
				</div>
				<div>
					<label for="staffRole">StaffRole</label>
					<div>
						<form:input path="staffRole" />
					</div>
				</div>
				<div>
					<label for="staffGender">StaffGender</label>
					<div>
						<form:input path="staffGender" />
					</div>
				</div>
				<div>
					<label for="staffDateOfBirth">StaffDateOfBirth</label>
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