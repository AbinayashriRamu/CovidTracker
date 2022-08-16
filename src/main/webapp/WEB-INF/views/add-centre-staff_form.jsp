<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<style type="text/css">
h1 {
	color: rgb(210, 210, 210);
	float: center;
	text-align: center;
}

tr {
	color: red;
}

label {
	color: white;
	font-size: 1.3em;
	display: flex;
	margin: 5px;
	font-weight: bold;
	cursor: pointer;
	transition: .5s ease-in-out;
}

#btn {
	width: 150px;
	height: 30px;
	border: black;
	border-radius: 3px;
	padding-left: 8px;
	color: white;
	background-color: maroon;
	display: inline-block;
	float: right;
}

#log {
	width: 150px;
	height: 30px;
	border: black;
	border-radius: 3px;
	padding-left: 8px;
	color: white;
	background-color: maroon;
	display: inline-block;
	margin: 4px 2px;
	cursor: pointer;
	-webkit-transition-duration: 0.4s;
	transition-duration: 0.4s;
	float: center;
}

.box {
	overflow: hidden;
	border-radius: 10px;
	box-shadow: 5px 20px 50px #000;
	margin: auto;
	padding: 10px;
	text-align: center;
	float: center;
	font-weight: 600;
	width: 600px;
}

#centreId {
	width: 250px;
	height: 30px;
	border: none;
	border-radius: 3px;
	padding-left: 8px;
}

#staffName {
	width: 250px;
	height: 30px;
	border: none;
	border-radius: 3px;
	padding-left: 8px;
}

#staffRole {
	width: 250px;
	height: 30px;
	border: none;
	border-radius: 3px;
	padding-left: 8px;
}

.container {
	text-align: center;
}

#staffGender {
	width: 250px;
	height: 30px;
	border: none;
	border-radius: 3px;
	padding-left: 8px;
}

}
#log {
	box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0
		rgba(0, 0, 0, 0.19);
}

body {
	background-image:
		url("https://ak.picdn.net/shutterstock/videos/1066547653/thumb/12.jpg?ip=x480");
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: 100% 100%;
	background-color: #080710;
}
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
							<form:select path="centreId" class="text-box"
								placeholder="CentreId" title="Id must be required"
								required="true">
								<form:option value="100">100</form:option>
								<form:option value="101">101</form:option>
								<form:option value="102">102</form:option>
							</form:select>
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
					</div>
				</form:form>
			</div>
		</div>
	</div>
</body>
</html>
