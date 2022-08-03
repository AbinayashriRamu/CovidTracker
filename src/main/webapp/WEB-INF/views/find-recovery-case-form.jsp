<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find recovery Detail</title>

</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="" method="post" modelAttribute="getRecoveryCases">
				<div>
					<label for="aadharNo">aadharNo</label>
					<div>
						<form:input path="aadharNo" readonly="true" />
					</div>
				</div>
				<div>
					<label for="dischargeDate">dischargeDate</label>
					<div>
						<form:input path="dischargeDate" readonly="true" />
					</div>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>