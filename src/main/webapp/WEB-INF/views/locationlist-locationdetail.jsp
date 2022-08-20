<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>

<style>
<%@include file="/WEB-INF/css/locationlist-locationdetail.css"%>
</style>

<meta charset="ISO-8859-1">
<title>Location</title>
</head>
<body>
	<h1>Location</h1>
	<div id="table root">
		<div align="center">
		<table border="2">
		<caption></caption>
			<thead>
				<tr>
					
					<th>District</th>
					<th>PinCode</th>
					<th>StateName</th>
					<th>Country</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="cen" items="${alllocations}">
					<tr>
						<td>${cen.district}</td>
						<td>${cen.pinCode}</td>
						<td>${cen.stateName}</td>
						<td>${cen.country}</td>
						</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<button id="log" onclick="history.back()">Go Back</button>
</body>
</html>