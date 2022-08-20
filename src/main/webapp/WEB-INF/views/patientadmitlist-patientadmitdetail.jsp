<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>

<style>
<%@include file="/WEB-INF/css/patientadmitlist-patientadmitdetail.css"%>
</style>

<meta charset="ISO-8859-1">
<title>patient admit detail</title>
</head>
<body>
	<h1>Patient Admit Detail</h1>
	<div id="table root">
		<div align="center">
		<table border="2">
		<caption></caption>
			<thead>
				<tr>
				    <th>AdmitId</th>
					<th>StaffId</th>
					<th>AadharNumber</th>
					<th>CentreId</th>
					<th>AdmitDate</th>
					<th>DischargeDate</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="cen" items="${allAdmitResults}">
					<tr>
					    <td>${cen.admitId}</td>
						<td>${cen.staffId}</td>
						<td>${cen.aadharNumber}</td>
						<td>${cen.centreId}</td>
						<td>${cen.admitDate}</td>
						<td>${cen.dischargeDate}</td>
						
						<td><a href="updatepatientadmitform?id=${cen.admitId}">
								<input onclick="change()" type="button" value="Update"
								id="myButton1"></input></a></td>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<button id="log" onclick="history.back()">Go Back</button>
</body>
</html>