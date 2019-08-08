<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>

<html>
<head>
<title>List Customers</title>
</head>

<body>

	<div id="wrapper">
		<div id="header">
			<h2>CRF-Customer Registration Form</h2>
		</div>
	</div>
			
	<div id="container">
		<div id="content">
		<!-- add out html table here -->
			<table>
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Father Name</th>
					<th>Gender</th>
					<th>Dob</th>
					<th>Address</th>
				</tr>
				
				<!-- loop over and print our customers -->
				<c:forEach var="tempCustomer" items="${customers}">
				
					<tr>
						<td> <c:out value="${tempCustomer.firstName}" /></td>
						<td> <c:out value="${tempCustomer.lastName}" /></td>
						<td> <c:out value="${tempCustomer.fatherName}" /></td>
						<td> <c:out value="${tempCustomer.gender}" /></td>
						<td> <c:out value="${tempCustomer.dob}" /></td>
						<td> <c:out value="${tempCustomer.address}" /></td>
						
						<%-- <td> ${tempCustomer.lastName} </td>
						<td> ${tempCustomer.fatherName} </td>
						<td> ${tempCustomer.gender} </td>
						<td> ${tempCustomer.dob} </td>
						<td> ${tempCustomer.address} </td> --%>
					</tr>
				
				
				</c:forEach>
				
			</table>
			
		</div>
	
	</div>		

</body>
</html>