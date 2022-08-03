<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>location detail</title>
</head>
<body>
	<div id="table root">

		<table>
			<thead>
				<tr>
					<th>locationId</th>
					<th>district</th>
					<th>pinCode</th>
					<th>stateName</th>
					<th>country</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="cen" items="${alllocations}">
					<tr>
						<td>${cen.locationId}</td>
						<td>${cen.district}</td>
						<td>${cen.pinCode}</td>
						<td>${cen.stateName}</td>
						<td>${cen.country}</td>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>