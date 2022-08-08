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
			<form:form action="" method="post"
				modelAttribute="fetchByCentreId">
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
	<div id="table root">

		<table>
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