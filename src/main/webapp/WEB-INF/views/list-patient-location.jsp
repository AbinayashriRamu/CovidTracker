<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="" method="post" modelAttribute="LocationTablelist">
				<div>
					<label for="district">district</label>
					<div>
						<form:input path="district" readonly="true" />
					</div>
				</div>
				<div>
					<label for="pinCode">pinCode</label>
					<div>
						<form:input path="pinCode" readonly="true" />
					</div>

				</div>
				<div>
					<label for="stateName">stateName</label>
					<div>
						<form:input path="stateName" readonly="true" />
					</div>
				</div>
				<div>
					<label for="country">country</label>
					<div>
						<form:input path="country" readonly="true" />
					</div>
				</div>
			</form:form>
		</div>
	</div>
	<div id="getpatientDetail">

		<table>
			<thead>
				<tr>
					<th>patientName</th>
					<th>aadharNo</th>
					<th>street</th>
					<th>staffId</th>
					<th>centreId</th>
					<th>pinCode</th>
					<th>bloodGroup</th>
					<th>phoneNo</th>
					<th>street</th>
					<th>activeStatus</th>
					<th>deadDate</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="cen" items="${getpatientDetail}">
					<tr>
						<td>${cen.patientName}</td>
						<td>${cen.aadharNo}</td>
						<td>${cen.street}</td>
						<td>${cen.staffId}</td>
						<td>${cen.centreId}</td>
						<td>${cen.pinCode}</td>
						<td>${cen.bloodGroup}</td>
						<td>${cen.phoneNo}</td>
						<td>${cen.testResult}</td>
						<td>${cen.activeStatus}</td>
						<td>${cen.deadDate}</td>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>