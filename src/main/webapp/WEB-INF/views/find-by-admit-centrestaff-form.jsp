<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>

<style>
<%@include file="/WEB-INF/css/find-by-admit-centrestaff-form.css"%>

</style>
<meta charset="ISO-8859-1">
<title>patient admit detail</title>
</head>
<body>
<h1>Admit Detail</h1>
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
				<c:forEach var="cen" items="${fetchAllStaffAdmitById}">
					<tr>
						<td>${cen.admitId}</td>
						<td>${cen.staffId}</td>
						<td>${cen.aadharNumber}</td>
						<td>${cen.centreId}</td>
						<td>${cen.admitDate}</td>
						<td>${cen.dischargeDate}</td>
				</c:forEach>
			</tbody>
		</table>
		<button onclick="history.back()">Go Back</button>
	</div>
	</div>
	
</body>
</html>