<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>patient detail</title>
</head>
<body>
	<div id="table root">

		<table>
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
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>