<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>test detail</title>
</head>
<body>
	<div id="table root">

		<table>
			<thead>
				<tr>
					<th>testId</th>
					<th>testingDate</th>
					<th>testResult</th>
					<th>aadharNo</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="cen" items="${alltestresult}">
					<tr>
						<td>${cen.testId}</td>
						<td>${cen.testingDate}</td>
						<td>${cen.testResult}</td>
						<td>${cen.aadharNo}</td>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>