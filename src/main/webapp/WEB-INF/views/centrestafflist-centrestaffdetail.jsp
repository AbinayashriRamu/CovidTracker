<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>staff detail</title>
</head>
<body>
	<div id="table root">

		<table>
			<thead>
				<tr>
					<th>CentreId</th>
					<th>StaffName</th>
					<th>StaffId</th>
					<th>StaffRole</th>
					<th>StaffGender</th>
					<th>StaffDateOfBirth</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="cen" items="${allCentreStaffs}">
					<tr>
						<td>${cen.centreId}</td>
						<td>${cen.staffName}</td>
						<td>${cen.staffId}</td>
						<td>${cen.staffRole}</td>
						<td>${cen.staffGender}</td>
						<td>${cen.staffDateOfBirth}</td>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>