<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>

<style>
table, tb {
	width: 50%;
	padding: 15px;
	text-align: left;
}

th, td {
	border: solid 1px #777;
	padding: 10px;
	border-color: #cc0033;
}

td {
	color: #000000
}

body {
	background-image:
		url("https://klewtv.com/resources/media/602530ea-4d79-450e-8d04-403edfdee83d-originalBlur_covid.jpg?1658334367243");
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: 100% 100%;
}

h1
{
align-items: center;
}

</style>

<meta charset="ISO-8859-1">
<title>patient detail</title>
</head>
<body>
	<h1>Patient Detail</h1>
	<div id="table root">
		<div align="center">
		<table border="2">
		<caption></caption>
			<thead>
				<tr>
					<th>PatientName</th>
					<th>AadharNumber</th>
					<th>Street</th>
					<th>PinCode</th>
					<th>BloodGroup</th>
					<th>PhoneNo</th>
					<th>LastTestId</th>
					<th>ActiveStatus</th>
					<th>DeadDate</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="cen" items="${allPatientDetails}">
					<tr>
						<td>${cen.patientName}</td>
						<td>${cen.aadharNumber}</td>
						<td>${cen.street}</td>
						<td>${cen.pinCode}</td>
						<td>${cen.bloodGroup}</td>
						<td>${cen.phoneNo}</td>
						<td>${cen.lastTestId}</td>
						<td>${cen.activeStatus}</td>
						<td>${cen.deadDate}</td>
						
						<td><a href="updatepatientform?aadharNumber=${cen.aadharNumber}">
								<input onclick="change()" type="button" value="Update"
								id="myButton1"></input></a></td>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>