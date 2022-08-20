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
<%@include file="/WEB-INF/css/viewdetails.css"%>
</style>
</head>
<body>
	<div>

		<button id="btn" onclick="history.back()">
			<span class="fa fa-home" style="font-size: 36px"></span>
		</button>
	</div>
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



	</div>

</body>
</html>