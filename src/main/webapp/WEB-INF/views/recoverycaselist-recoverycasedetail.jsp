<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>recovery detail</title>
</head>
<body>
	<div id="table root">

		<table>
			<thead>
				<tr>
					<th>aadharNo</th>
					<th>dischargeDate</th>

				</tr>
			</thead>
			<tbody>
				<c:forEach var="cen" items="${allRecoveryCases}">
					<tr>
						<td>${cen.aadharNo}</td>
						<td>${cen.dischargeDate}</td>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>