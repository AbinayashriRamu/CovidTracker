<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>

<style>
<%@include file="/WEB-INF/css/find-by-list-testing-date-form.css"%>
</style>

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Test Result</h1>
	<div id="table root">
		<div align="center">
			<table border="2">
				<caption></caption>
				<thead>
					<tr>
						<th>TestId</th>
						<th>TestingDate</th>
						<th>TestResult</th>
						<th>AadharNumber</th>
						<th>TestBy</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="cen" items="${fetchBytestdateandresult}">
						<tr>
							<td>${cen.testId}</td>
							<td>${cen.testingDate}</td>
							<td>${cen.testResult}</td>
							<td>${cen.aadharNumber}</td>
							<td>${cen.testBy}</td>
					</c:forEach>
				</tbody>
			</table>
			<button onclick="history.back()">Go Back</button>
		</div>
	</div>

</body>
</html>