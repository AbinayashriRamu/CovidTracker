<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>

<style>
<%@include file="/WEB-INF/css/centrelist-centredetail.css"%>
</style>

<meta charset="ISO-8859-1">
<title>centre detail</title>
</head>
<body>
	<h1>Centre Detail List</h1>
	<div id="table root">
		<div align="center">

			<table border="2">
				<caption></caption>
				<thead>
					<tr>
						<th>CentreId</th>
						<th>CentreName</th>
						<th>pinCode</th>
						<th>ContactPersonName</th>
						<th>ContactPersonPhoneNo</th>

					</tr>
				</thead>
				<tbody>
					<c:forEach var="cen" items="${allcentredetails}">
						<tr>
							<td>${cen.centreId}</td>
							<td>${cen.centreName}</td>
							<td>${cen.pinCode}</td>
							<td>${cen.contactPersonName}</td>
							<td>${cen.contactPersonPhoneNo}</td>
					</c:forEach>
				</tbody>
			</table>
		</div>
		
	<button id="log" onclick="history.back()">Go Back</button>
</body>
</html>