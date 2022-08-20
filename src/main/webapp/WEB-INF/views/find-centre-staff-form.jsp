<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<style>
<%@include file="/WEB-INF/css/find-centre-staff-form.css"%>
</style>
<meta charset="ISO-8859-1">
<title>Find Staff Detail</title>

</head>
<body>
	<h1>Get Staff Detail</h1>
	<div id="root">
		<div id="form" class="box">
			<form:form action="" method="get" modelAttribute="getAllCentreStaffs">
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
				<br>
			</form:form>
				<a href="/home/ForAllTables">
						<button class="btn">Back</button>
					</a>
		</div>
	</div>
</body>
</html>