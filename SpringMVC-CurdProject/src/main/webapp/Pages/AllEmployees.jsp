<%@page isELIgnored="false"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>

<html>

<head>

<title>Emp information</title>

<link rel="stylesheet"

	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">

<script

	src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>

<script

	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>

</head>

<body>
<h3 style="color: green; text-align: center;">${message}</h3>

	<div class="container">

		<div class="card">

			<div class="card-header bg-primary text-white text-center">

				<h3>EMPLOYEE DETAILS PAGE</h3>

			</div>



			<div class="card-body">

				<table class="table table-hover">

					<tr class="bg-info text-white">







						<th>ID</th>

						<th>Name</th>

						<th>Salary</th>

						<th>OPERATIONS</th>



					</tr>

					<tr>

						<c:forEach var="ob" items="${list}">

                          <tr>

							<td>${ob.empId}</td>

							<td>${ob.empName}</td>

							<td>${ob.empSal}</td>

							<td>

							<%-- <a href="/employee/delete?empId=${ob.empId}" class="btn btn-danger">DELETE</a> |

							<a href="/employee/edit?empId=${ob.empId}" class="btn btn-warning">EDIT</a> --%>

							 <a href="/employee/deletedata?empId=${ob.empId}" 

							 class="btn btn-danger">DELETE</a> |

							<a href="/employee/update/${ob.empId}" 

							class="btn btn-warning">EDIT</a> 

						</td>

                        </tr>

						</c:forEach>

					</tr>





				</table>

			</div>

		</div>

	</div>

<a style="display:block; text-align: center; text-decoration: none; " href="<%=request.getContextPath()%>/employee/">Click to Register New Employee</a>

</body>

</html>