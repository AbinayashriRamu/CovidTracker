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

#patientName {
	width: 250px;
	height: 30px;
	border: none;
	border-radius: 3px;
	padding-left: 8px;
}

#aadharNumber {
	width: 250px;
	height: 30px;
	border: none;
	border-radius: 3px;
	padding-left: 8px;
}

#lastTestId {
	width: 250px;
	height: 30px;
	border: none;
	border-radius: 3px;
	padding-left: 8px;
}

.container {
	text-align: center;
}

#street {
	width: 250px;
	height: 30px;
	border: none;
	border-radius: 3px;
	padding-left: 8px;
}

#pinCode {
	width: 250px;
	height: 30px;
	border: none;
	border-radius: 3px;
	padding-left: 8px;
}

#bloodGroup {
	width: 250px;
	height: 30px;
	border: none;
	border-radius: 3px;
	padding-left: 8px;
}

#phoneNo {
	width: 250px;
	height: 30px;
	border: none;
	border-radius: 3px;
	padding-left: 8px;
}

#activeStatus {
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
<title>Add patient</title>

</head>
<body>

	<h1>Patient Details</h1>
	<a href="/patientdetail/patientlist">
		<button id="btn">List</button>
	</a>
	<div id="root">
		<div id="form" class="box">
			<form:form action="addpatient" method="post"
				modelAttribute="addPatientDetails">
				<div>
					<label for="patientName">Patient Name</label>
					<div>
						<form:input path="patientName" class="text-box"
							placaholder="PatientName" title="Name must be required"
							pattern="^[a-zA-Z]+$" required="true" />
					</div>
				</div>
				<form:errors path="patientName" Class="text-danger"></form:errors>
				<div>
					<label for="aadharNumber">AadharNumber</label>
					<div>
						<form:input path="aadharNumber" title="Id must be required"
							required="true" />
					</div>
				</div>
				<form:errors path="aadharNumber" Class="text-danger"></form:errors>
				<div>
					<label for="street">Street</label>
					<div>
						<form:input path="street" title="Id must be required"
							required="true" />
					</div>
				</div>
				<form:errors path="street" Class="text-danger"></form:errors>
				<div>
					<label for="pinCode">PinCode</label>
					<div>
						<form:select path="pinCode" class="text-box" placeholder="PinCode"
							title="Id must be required" required="true">
							<form:option value="641654">641654</form:option>
							<form:option value="600311">600311</form:option>
							<form:option value="600032">600032</form:option>
						</form:select>
					</div>
				</div>
				<form:errors path="pinCode" Class="text-danger"></form:errors>
				<div>
					<label for="bloodGroup">BloodGroup</label>
					<div>
						<form:select path="bloodGroup" class="text-box"
							placeholder="BloodGroup" title="Id must be required"
							required="true">
							<form:option value="A positive">A Positive</form:option>
							<form:option value="B Positive">B Positive</form:option>
							<form:option value="AB Positive">AB Positive</form:option>
							<form:option value="A Negative">A Negative</form:option>
							<form:option value="B Negative">B Negative</form:option>
							<form:option value="AB Negative">AB Negative</form:option>
							<form:option value="O positive">O Positive</form:option>
							<form:option value="O Negative">O Negative</form:option>
						</form:select>
					</div>
				</div>
				<form:errors path="bloodGroup" Class="text-danger"></form:errors>
				<div>
					<label for="phoneNo">PhoneNo</label>
					<div>
						<form:input path="phoneNo" class="text-box"
							placaholder="PhoneNumber" title="PhoneNumber must be required"
							pattern="[1-9]{1}[0-9]{9}" required="true" />
					</div>
				</div>
				<form:errors path="phoneNo" Class="text-danger"></form:errors>
				<div>
					<label for="lastTestId">Last Test Id</label>
					<div>
						<form:input path="lastTestId" title="Id must be required"
							required="true" />
					</div>
				</div>
				<form:errors path="lastTestId" Class="text-danger"></form:errors>
				<div>
					<label for="activeStatus">Active Status</label>
					<div>
						<form:select path="activeStatus" class="text-box"
							placeholder="ActiveStatus" title="Id must be required"
							required="true">
							<form:option value="Alive">Alive</form:option>
						</form:select>
					</div>
				</div>
				<form:errors path="activeStatus" cssClas="text-danger"></form:errors>
				<div>
					<form:button id="log">Add New</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>
