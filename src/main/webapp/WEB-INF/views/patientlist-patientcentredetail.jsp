<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>centre detail</title>
</head>
<body>
	<div id="table root">

		<table>
			<thead>
				<tr>
					<th>aadharNo</th>
					<th>centreId</th>

				</tr>
			</thead>
			<tbody>
				<c:forEach var="cen" items="${allPatientCentreResults}">
					<tr>
						<td>${cen.aadharNo}</td>
						<td>${cen.centreId}</td>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>