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
					<th>aadharNo</th>
					<th>centreId</th>
					<th>admitDate</th>
					<th>admittedBy</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="cen" items="${allAdmitResults}">
					<tr>
						<td>${cen.aadharNo}</td>
						<td>${cen.centreId}</td>
						<td>${cen.admitDate}</td>
						<td>${cen.admittedBy}</td>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>