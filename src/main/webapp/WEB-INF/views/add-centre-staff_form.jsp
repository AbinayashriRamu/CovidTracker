<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<style >
<%@include file="/WEB-INF/css/add-centre-staff_form.css"%>
</style>
<meta charset="ISO-8859-1">
<title>Add Centre staff</title>

</head>
<body>
	<h1>Centre Staff Detail</h1>
	<a href="/centrestaffdetail/centrestafflist">
		<button id="btn">List</button>
	</a>
	<div id="root">
		<div id="form" class="box">
			<form:form action="addcentrestaff" method="post"
				modelAttribute="addcentrestaffs">
				<div>
					<label for="centreId">CentreId</label>
					<div>
						<form:input path="centreId" class="text-box"
							placeholder="CentreId" title="Id must be required"
							required="true"/>
							
					</div>
				</div>
				<form:errors path="centreId" Class="text-danger"></form:errors>
				<div>
					<label for="staffName">StaffName</label>
					<div>
						<form:input path="staffName" class="text-box"
							placaholder="CentreName" title="Name must be required"
							pattern="^[a-zA-Z]+$" required="true" />
					</div>
				</div>
				<form:errors path="staffName" Class="text-danger"></form:errors>
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
				<form:errors path="staffRole" Class="text-danger"></form:errors>
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
				<form:errors path="staffGender" Class="text-danger"></form:errors>
				<div>
					<label for="staffDateOfBirth">StaffDateOfBirth</label>
					<div>
						<form:input path="staffDateOfBirth" class="text-box" type="date"
							title="Id must be required" required="true"
							style="width: 250px;height: 25px" />
					</div>
				</div>
				<form:errors path="staffDateOfBirth" Class="text-danger"></form:errors>
				<div>
					<form:button id="log">Add New</form:button>
					<button id="log" onclick="history.back()">Go Back</button>
				</div>
			</form:form>
		</div>
	</div>

</body>
</html>
