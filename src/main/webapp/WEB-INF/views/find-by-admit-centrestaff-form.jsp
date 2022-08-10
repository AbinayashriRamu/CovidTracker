<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>patient admit detail</title>
</head>
<body>
	<div id="table root">

		<table>
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
						<td>${cen.aadharNo}</td>
						<td>${cen.centreId}</td>
						<td>${cen.admitDate}</td>
						<td>${cen.dischargeDate}</td>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>