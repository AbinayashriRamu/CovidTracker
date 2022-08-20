<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
<%@include file="/WEB-INF/css/addalltables.css"%>
</style>
<meta charset="ISO-8859-1">
<title>Add All Tables</title>

</head>
<body>


	<div class="navbar">
		<div class="dropdown">
			<button class="dropbtn">
				Location Detail <i class="fa fa-caret-down"></i>
			</button>
			<div class="dropdown-content">
				<a href="/locationdetail/addlocationform">Add Location</a><br>
				<a href="/locationdetail/locationlist">List Location</a><br> <a
					href="/locationdetail/findlocation?id=641654">Get Location ID</a>
			</div>
		</div>
		<div class="dropdown">
			<button class="dropbtn">
				Centre Detail <i class="fa fa-caret-down"></i>
			</button>
			<div class="dropdown-content">
				<a href="/centredetail/addcentreform">Add Centre</a><br> <a
					href="/centredetail/centrelist">List Centre</a><br> <a
					href="/centredetail/findcentre?id=100">Get Center Id</a>
			</div>
		</div>
		<div class="dropdown">
			<button class="dropbtn">
				Centre Staff <i class="fa fa-caret-down"></i>
			</button>
			<div class="dropdown-content">
				<a href="/centrestaffdetail/centrestafflist">List Staff</a> <br>
				<a href="/centrestaffdetail/findcentrestaff?id=1000">Get Staff
					Id</a> <br>
			</div>
		</div>
		<div class="dropdown">
			<button class="dropbtn">
				Patient Detail <i class="fa fa-caret-down"></i>
			</button>
			<div class="dropdown-content">
				<a href="/patientdetail/patientlist">List Patient</a><br> <a
					href="/patientdetail/findpatientdetail?id=135790864211">Get
					Patient ID</a>
			</div>
		</div>
		<div class="dropdown">
			<button class="dropbtn">
				Patient Symptom <i class="fa fa-caret-down"></i>
			</button>
			<div class="dropdown-content">
				<a href="/patientsymptomdetail/patientsymptomlist">List Symptom</a>
				<br> <a
					href="/patientsymptomdetail/findpatatientsymptomid?id=200">Get
					observated ID</a>

			</div>
		</div>
		<div class="dropdown">
			<button class="dropbtn">
				Test Result <i class="fa fa-caret-down"></i>
			</button>
			<div class="dropdown-content">
				<a href="/testresultdetail/testresultlist">List TestResult</a> <br>
				<a href="/testresultdetail/findtestresult?id=1000">Get Test Id</a>
			</div>
		</div>
		<div class="dropdown">
			<button class="dropbtn">
				Admit Detail <i class="fa fa-caret-down"></i>
			</button>
			<div class="dropdown-content">
				<a href="/patientadmitdetail/patientadmitlist">List Admit</a><br>
				<a href="/patientadmitdetail/findpatientadmit?id=1000">Get Admit
					ID</a>
			</div>
		</div>
		<div>
			<a href="/home/index">
				<button>Back</button>
			</a>
		</div>
	</div>
</body>
</html>