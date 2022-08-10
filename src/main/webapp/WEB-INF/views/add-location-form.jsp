<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add location</title>

</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="addlocation" method="post"
				modelAttribute="addlocations">
				<div>
					<label for=district>District</label>
					 <div>
                        <form:select path="district" class="text-box" placeholder="District">
                            <form:option value="Coimbatore">Coimbatore</form:option>
                            <form:option value="Thiruchy">Thiruchy</form:option>
                            <form:option value="Madurai">Madurai</form:option>
                        </form:select>
                        </div>
				</div>
				<div>
					<label for="pinCode">PinCode</label>
					<div>
						 <div>
                        <form:select path="pinCode" class="text-box" placeholder="PinCode">
                            <form:option value="641654">641654</form:option>
                            <form:option value="600311">600311</form:option>
                            <form:option value="600032">600032</form:option>
                        </form:select>
                        </div>
					</div>
				</div>
				<div>
					<label for="stateName">StateName</label>
					<div>
						<div>
                        <form:select path="stateName" class="text-box" placeholder="StateName">
                            <form:option value="Tamilnadu">Tamilnadu</form:option>
                        </form:select>
                        </div>
					</div>
				</div>
				<div>
					<label for="country">Country</label>
					<div>
						<div>
                        <form:select path="country" class="text-box" placeholder="Country">
                            <form:option value="India">India</form:option>
                        </form:select>
                        </div>
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
