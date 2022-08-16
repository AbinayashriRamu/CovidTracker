<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	<div id="table root">

		<table>
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
				<c:forEach var="cen" items="${fetchAllCentreloctionById}">
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

</body>
</html>