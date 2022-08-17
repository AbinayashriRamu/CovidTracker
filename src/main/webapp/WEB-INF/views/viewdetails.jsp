<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Covid Tracker</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
	background-image:
		url("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKti71bcJ1OCxAW1Hayc907d8jKfPwqO6ZFg&usqp=CAU");
	background-height: 786px;
	background-width: 1366px;
	background-attachment: fixed;
	background-size: cover;
	font-family: Arial, Helvetica, sans-serif;
}

h1 {
	font-family: ui-monospace;
	color: white;
	text-align: left;
}

h1 {
	text-align: center;
}

.s {
	background-color: lightgrey;
	Height: 570px;
	width: 50%;
	outline-color: black;
	outline-style: double;
	padding: 10px;
	color: red;
	font-family: Century Gothic ";
	padding-left: 180;
	text-align: center;
	margin-left: 23%;
}

.list {
	color: Black;
	text-align: center;
	/* morgin:20px;
    tab-size: 20; */
	font-size: 15px;
	text-decoration: none;
}
</style>
</head>
<body>
	<div class=s>
		<div style="margin-top: 20px">
			<a class=list
				href="/patientdetail/getpatientlocation?aadharNumber=135790864211">List
				Of PatientDetail and Location By Aadhar
				<hr>
			</a><br>
		</div>
		<div>
			<a class=list
				href="/patientdetail/listpatientBylocation?pinCode=641654">List
				Of PatientDetail and Location By PinCode
				<hr>
			</a><br>
		</div>
		<div>
			<a class=list href="/centredetail/getcentrelocation?centreId=100">List
				Of Centre Detail and Centre Location By CentreId
				<hr>
			</a><br>
		</div>
		<div>
			<a class=list
				href="/centredetail/listcentreBylocation?pinCode=641654">List Of
				Centre detail By Pincode
				<hr>
			</a><br>
		</div>
		<div>
			<a class=list
				href="/testresultdetail/getTestResultDetail?TestingDate=2022/08/11&Result=Positive">List
				Of Cases by Date
				<hr>
			</a><br>
		</div>
		<div>
			<a class=list
				href="/patientadmitdetail/getadmitcentrestaff?admitId=1000">List
				Of Patient,admit,Centre detail By admitId
				<hr>
			</a><br>
		</div>
		<div>
			<a class=list
				href="/patientadmitdetail/listadmitcenstaff?staffId=1000">List
				Of admit By staffId
				<hr>
			</a><br>
		</div>
		<div>
			<a class=list
				href="/patientadmitdetail/listadmitcentredetail?centreId=100">List
				Of Admit By CentreId
				<hr>
			</a><br>
		</div>
		<div>
			<a class=list
				href="/patientadmitdetail/ListPatientAdmitDetail?admitDate=2022-08-11">List
				Of Admit By admitDate
				<hr>
			</a><br>
		</div>
		<div>
			<a class=list
				href="/patientadmitdetail/getCentreAdmitdetail?centreId=100">List
				Of CentreDetail and Admit By CentreId
				<hr>
			</a><br>
		</div>
		<div>
			<a class=list
				href="/patientadmitdetail/getStaffAdmitdetail?staffId=1000">List
				Of Admit and StaffDetail By StaffId
				<hr>
			</a><br>
		</div>
		<div>
			<li><a href="/home/ForAllTables">Back</a>
		</div>


	</div>

</body>
</html>