<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index</title>
<style>
body {
	background-image:
		url(https://www.undp.org/sites/g/files/zskgke326/files/styles/banner_image_desktop/public/migration/bd/shutterstock_coronavirus-1669639837-Convertido-02.png?h=d1cb525d&itok=kxGpeeb4);
	background-height: 786px;
	background-width: 1366px;
	background-attachment: fixed;
	background-size: cover;
}

table, th, td {table , th, td { border:1pxsolidblack;
	border-collapse: collapse;
}

}
th {
	background-color: #04AA6D;
	color: white;
}

td {
	backgoung-colour: #c4f5dc;
}

a:link {
	color: white;
	font-size: 20px;
	text-decoration: none;
}

.button {
	margin-top: 20px;
	width: 100px;
	height: 38px;
	font-size: 15px;
	background-color: blue;
	border: 2px solid blue;
	border-radius: 5px;
	color: white;
}
</style>
</head>
<body>
<div style="margin-left: 115px;">

	<div style="margin: 10px 0px 10px 0px;">
		<h1 style="font-size: 30px; color: white;">Patient Locations</h1>
	</div>
	<div style="margin: 10px 0px 10px 0px;">
		<a href="/locationdetail/locationlist" style="color: white;">List</a>
	</div>
	<div style="margin: 10px 0px 10px 0px;">
		<a href="/locationdetail/addlocationform" style="color: white;">Add</a>
	</div>
	<div style="margin: 10px 0px 10px 0px;">
		<a href="/locationdetail/updatelocationform?pinCode="
			style="color: white;">Update</a>
	</div>
	<div style="margin: 10px 0px 10px 0px;">
		<a href="/locationdetail/deletelocation?pinCode="
			style="color: white;">Delete</a>
	</div>
	<div style="margin: 10px 0px 10px 0px;">
		<a href="/locationdetail/findlocation?id=" style="color: white;">FindByPinCode</a>
	</div>

	<div></div>
	<div style="margin: 10px 0px 10px 0px;">
		<h1 style="font-size: 30px; color: white;">Centre Detail</h1>
	</div>
	<div style="margin: 10px 0px 10px 0px;">
		<a href="/centredetail/centrelist" style="color: white;">List</a>
	</div>
	<div style="margin: 10px 0px 10px 0px;">
		<a href="/centredetail/addcentreform" style="color: white;">Add</a>
	</div>
	<div style="margin: 10px 0px 10px 0px;">
		<a href="/centredetail/updatecentreform?centreId="
			style="color: white;">Update</a>
	</div>
	<div style="margin: 10px 0px 10px 0px;">
		<a href="/centredetail/deletecentre?centreId=" style="color: white;">Delete</a>
	</div>
	<div style="margin: 10px 0px 10px 0px;">
		<a href="/centredetail/findcentre?id=" style="color: white;">FindByCentreId</a>
	</div>
	<div></div>
	<div style="margin: 10px 0px 10px 0px;">

		<h1 style="font-size: 30px; color: white;" style="color: white;">Patient
			Detail</h1>
	</div>
	<div style="margin: 10px 0px 10px 0px;">
		<a href="/patientdetail/patientlist" style="color: white;">List</a>
	</div>
	<div style="margin: 10px 0px 10px 0px;">
		<a href="/patientdetail/addpatientdetailform" style="color: white;">Add</a>
	</div>
	<div style="margin: 10px 0px 10px 0px;">
		<a href="/patientdetail/updatepatientform?aadharNo="
			style="color: white;">Update</a>
	</div>
	<div style="margin: 10px 0px 10px 0px;">
		<a href="/patientdetail/deletepatient?aadharNo=" style="color: white;">Delete</a>
	</div>
	<div style="margin: 10px 0px 10px 0px;">
		<a href="/patientdetail/findpatientdetail?id=" style="color: white;">FindByAadharNumber</a>
	</div>
	<div></div>
	<div style="margin: 10px 0px 10px 0px;">
		<h1 style="font-size: 30px; color: white;" style="color: white;">Patient
			Symptoms</h1>
	</div>
	<div style="margin: 10px 0px 10px 0px;">
		<a href="/patientsymptomdetail/patientsymptomlist"
			style="color: white;">List</a>
	</div>
	<div style="margin: 10px 0px 10px 0px;">
		<a href="/patientsymptomdetail/addpatientsymptomform"
			style="color: white;">Add</a>
	</div>
	<div style="margin: 10px 0px 10px 0px;">
		<a
			href="/patientsymptomdetail/updatepatientsymptomform?observationId="
			style="color: white;">Update</a>
	</div>
	<div style="margin: 10px 0px 10px 0px;">
		<a href="/patientsymptomdetail/deletepatientsymptom?observationId="
			style="color: white;">Delete</a>
	</div>
	<div style="margin: 10px 0px 10px 0px;">
		<a href="/patientsymptomdetail/findpatatientsymptomid?id="
			style="color: white;">FindbySymptomId</a>
	</div>
	<div></div>
	<div style="margin: 10px 0px 10px 0px;">
		<h1 style="font-size: 30px; color: white;">Covid Test Result</h1>
	</div>
	<div style="margin: 10px 0px 10px 0px;">
		<a href="/testresultdetail/testresultlist" style="color: white;">List</a>
	</div>
	<div style="margin: 10px 0px 10px 0px;">
		<a href="/testresultdetail/addtestresultform" style="color: white;">Add</a>
	</div>
	<div style="margin: 10px 0px 10px 0px;">
		<a href="/testresultdetail/updatetestresultform?testId="
			style="color: white;">Update</a>
	</div>
	<div style="margin: 10px 0px 10px 0px;">
		<a href="/testresultdetail/deletetestresult?testId="
			style="color: white;">Delete</a>
	</div>
	<div style="margin: 10px 0px 10px 0px;">
		<a href="/testresultdetail/findtestresult?id=" style="color: white;">FindByTestId</a>
	</div>
	<div></div>
	<div style="margin: 10px 0px 10px 0px;">
		<h1 style="font-size: 30px; color: white;" style="color: white;">Centre
			Staff</h1>
	</div>
	<div style="margin: 10px 0px 10px 0px;">
		<a href="/centrestaffdetail/centrestafflist" style="color: white;">List</a>
	</div>
	<div style="margin: 10px 0px 10px 0px;">
		<a href="/centrestaffdetail/addcentrestaffform" style="color: white;">Add</a>
	</div>
	<div style="margin: 10px 0px 10px 0px;">
		<a href="/centrestaffdetail/updatecentrestaffform?staffId="
			style="color: white;">Update</a>
	</div>
	<div style="margin: 10px 0px 10px 0px;">
		<a href="/centrestaffdetail/deletecentrestaff?staffId="
			style="color: white;">Delete</a>
	</div>
	<div style="margin: 10px 0px 10px 0px;">
		<a href="/centrestaffdetail/findcentrestaff?id=" style="color: white;">FindBystaffId</a>
	</div>
	<div></div>
	<div style="margin: 10px 0px 10px 0px;">

		<h1 style="font-size: 30px; color: white;">Patient Admit</h1>
	</div>
	<div style="margin: 10px 0px 10px 0px;">
		<a href="/patientadmitdetail/patientadmitlist" style="color: white;">List</a>
	</div>
	<div style="margin: 10px 0px 10px 0px;">
		<a href="/patientadmitdetail/addpatientadmitform"
			style="color: white;">Add</a>
	</div>
	<div style="margin: 10px 0px 10px 0px;">
		<a href="/patientadmitdetail/updatepatientadmitform?id="
			style="color: white;">Update</a>
	</div>
	<div style="margin: 10px 0px 10px 0px;">
		<a href="/patientadmitdetail/deletepatientadmit?id="
			style="color: white;">Delete</a>
	</div>
	<div style="margin: 10px 0px 10px 0px;">
		<a href="/patientadmitdetail/findpatientadmit?id="
			style="color: white;">FindByAdmitId</a>
	</div>
	<div></div>
	</div>
</body>
</html>
