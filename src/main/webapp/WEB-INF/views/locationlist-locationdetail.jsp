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
	color: white;
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
color: white;
}

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
</body>
</html>