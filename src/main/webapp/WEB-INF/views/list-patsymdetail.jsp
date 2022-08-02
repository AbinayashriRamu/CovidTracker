<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>symptom detail</title>
</head>
<body>
	<div id="table root">

		<table>
			<thead>
				<tr>
					<th>aadharno</th>
					<th>symptomsdate</th>
					<th>temperature</th>
					<th>cold</th>
					<th>cough</th>
					<th>smell</th>
					<th>taste</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="cen" items="${allpatientsymp}">
					<tr>
						<td>${cen.aadharno}</td>
						<td>${cen.symptomsdate}</td>
						<td>${cen.temperature}</td>
						<td>${cen.cold}</td>
						<td>${cen.cough}</td>
						<td>${cen.smell}</td>
						<td>${cen.taste}</td>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>