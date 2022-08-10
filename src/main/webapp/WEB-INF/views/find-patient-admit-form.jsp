<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find patient admit Detail</title>

</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="" method="post" modelAttribute="getPatientAdmits">
				<div>
					<label for="admitId">AdmitId</label>
					<div>
						<form:input path="admitId" readonly="true" />
					</div>
				</div>
				<div>
					<label for="aadharNumber">AadharNumber</label>
					<div>
						<form:input path="aadharNo" readonly="true" />
					</div>
				</div>
				<div>
					<label for="centreId">CentreId</label>
					<div>
						<form:input path="centreId" readonly="true" />
					</div>
				</div>
				<div>
					<label for="staffId">StaffId</label>
					<div>
						<form:input path="staffId" readonly="true" />
					</div>
				</div>
				<div>
					<label for="admitDate">AdmitDate</label>
					<div>
						<form:input path="admitDate" readonly="true" />
					</div>

				</div>
				<div>
					<label for="dischargeDate">DischargeDate</label>
					<div>
						<form:input path="dischargeDate" readonly="true" />
					</div>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>