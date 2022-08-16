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

#testingDate {
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

#testBy {
	width: 250px;
	height: 30px;
	border: none;
	border-radius: 3px;
	padding-left: 8px;
}

#testResult {
	width: 250px;
	height: 30px;
	border: none;
	border-radius: 3px;
	padding-left: 8px;
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
<title>Add Test result</title>
</head>
<body>

	<h1>Test Result</h1>
	<a href="/testresultdetail/testresultlist">
		<button id="btn">List</button>
	</a>
	<div id="root">
		<div id="form" class="box">
			<form:form action="addtestresult" method="post"
				modelAttribute="addTestResults">
				<div>
					<label for="testingDate">TestingDate</label>
					<div>
						<form:input type="date" path="testingDate" />
					</div>
				</div>
				<form:errors path="testingDate" Class="text-danger"></form:errors>
				<div>
					<label for="aadharNumber">Aadhar Number</label>
					<div>
						<form:input path="aadharNumber" class="text-box"
							title="Id must be required" required="true" />
					</div>
				</div>
				<form:errors path="aadharNumber" Class="text-danger"></form:errors>
				<div>
					<label for=testResult>TestResult</label>
					<div>
						<form:select path="testResult" class="text-box"
							placeholder="TestResult" title="Id must be required"
							required="true">
							<form:option value="none">None</form:option>
						</form:select>
					</div>
				</div>
				<div>
					<label for="testBy">TestBy</label>
					<div>
						<form:select path="testBy" class="text-box" placeholder="TestBy"
							title="Id must be required" required="true">
							<form:option value="Doctor">Doctor</form:option>
							<form:option value="Nurse">Nurse</form:option>
							<form:option value="Labtech">LabTech</form:option>
						</form:select>
					</div>
				</div>
				<form:errors path="testBy" Class="text-danger"></form:errors>
				<div>
					<form:button id="log">Add New</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>
