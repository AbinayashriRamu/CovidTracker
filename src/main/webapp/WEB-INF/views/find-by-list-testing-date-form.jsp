<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div id="table root">

		<table>
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
	</div>

</body>
</html>