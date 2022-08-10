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
					<th>AadharNumber</th>
					<th>ObservationDate</th>
					<th>ObservationId</th>
					<th>ObservatedBy</th>
					<th>Temperature</th>
					<th>Cold</th>
					<th>Cough</th>
					<th>Smell</th>
					<th>Taste</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="cen" items="${allPatientSymptoms}">
					<tr>
						<td>${cen.aadharNumber}</td>
						<td>${cen.observationDate}</td>
						<td>${cen.observationId}</td>
						<td>${cen.observatedBy}</td>
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