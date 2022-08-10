<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add patient admit</title>

</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="addpatientadmit" method="post"
				modelAttribute="addPatientAdmits">
				<div>
					<label for="admitId">AdmitId</label>
					<div>
						<form:input path="admitId" />
					</div>
				</div>
				<div>
					<label for=aadharNumber>AadharNumber</label>
					<div>
						<form:input path="aadharNumber" />
					</div>
				</div>
				<div>
					<label for="centreId">CentreId</label>
					<div>
						<form:input path="centreId" />
					</div>
				</div>
				<div>
					<label for="staffId">StaffId</label>
					<div>
						<form:input path="staffId" />
					</div>
				</div>
				<div>
					<label for="admitDate">AdmitDate</label>
					<div>
						<form:input path="admitDate" type="date"/>
					</div>
				</div>
				<div>
					<label for="dischargeDate">Discharge Date</label>
					<div>
						<form:input path="dischargeDate" />
					</div>
				</div>
				
				<div>
					<form:button>Add New</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>
