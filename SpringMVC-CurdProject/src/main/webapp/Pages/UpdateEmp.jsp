<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>

 <head>

  <title>Document</title>

  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">

	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>

 </head>

 <body>

 <div class="container">

		<div class="card">

		<div class="card-header bg-primary text-white text-center">

				<h3>UPDATE EMPLOYEE DATA</h3>

			</div>

	<div class="card-body"> 

	<form action="<%=request.getContextPath()%>/employee/modify" method="POST">

	 <pre>
	    ID    : <input type="text" name="empId" readonly="readonly" class="form-control" value="${employee.empId}"/>
	   
		NAME  : <input type="text" name="empName" class="form-control" value="${employee.empName}"/>

		SALARY: <input type="text" name="empSal" class="form-control" value="${employee.empSal}"/>

			<button type="submit" class="btn btn-success">Update</button>
	  </pre>
	</form>

	</div>

</div>

</div>
<a style="display:block; text-align: center; " href="<%=request.getContextPath()%>/employee/getdata">Click For Home Page</a>
 </body>
</html>