<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>patient covid test result</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action=" " method="post" modelAttribute="getpatient">
				<div>
					<label for="patientName">patientName</label>
					<div>
						<form:input path="patientName" />
					</div>
				</div>
				<div>
					<label for=aadharNo>aadharNo</label>
					<div>
						<form:input path="aadharNo" />
					</div>
				</div>
				<div>
					<label for="street">street</label>
					<div>
						<form:input path="street" />
					</div>
				</div>
				<div>
					<label for="locationId">locationId</label>
					<div>
						<form:input path="locationId" />
					</div>
				</div>
				<div>
					<label for="bloodGroup">bloodGroup</label>
					<div>
						<form:input path="bloodGroup" />
					</div>
				</div>
				<div>
					<label for="phoneNo">phoneNo</label>
					<div>
						<form:input path="phoneNo" />
					</div>
				</div>
				<div>
					<label for="testResult">testResult</label>
					<div>
						<form:input path="testResult" />
					</div>
				</div>
				<div>
					<label for="activeStatus">activeStatus</label>
					<div>
						<form:input path="activeStatus" />
					</div>
				</div>
				<div>
					<label for="deadDate">deadDate</label>
					<div>
						<form:input path="deadDate" />
					</div>
				</div>
			</form:form>
		</div>
	</div>
	<div id="getCovidTestResult">

		<table border=10>
			<thead>
				<tr>
					<th>testId</th>
					<th>testingDate</th>
					<th>testResult</th>
					<th>aadharNo</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="cen" items="${getCovidTestResult}">
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