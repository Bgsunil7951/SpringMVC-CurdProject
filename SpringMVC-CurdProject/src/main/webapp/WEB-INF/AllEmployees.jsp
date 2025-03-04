<%@page import="in.sunil.entity.Employee"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
#thead{
display:flex;
justify-content:flex-start;
align-items:center;
width: 100%;
color: white;
height: 30px;
padding: 10px;
font-size: 20px;
font-weight: bold;
}
#tbody{
display:flex;
justify-content:flex-start;
align-items:center;
width: 100%;
height: 30px;
padding: 12px;
font-size: 18px;
}

.btn{
display:flex;
justify-content:center;
align-items:center;
width: 100px;
height: 20px;
background-color: green;
color: white;
padding: 20px;
font-weight: bold;
border: none;
border-radius: 10px;
}
</style>
<body>

	<h1 style="color: red; text-align: center;">All Employees</h1>

<table style="width: 100%; ">
<tr style="width: 100%; display: flex; justify-content:space-between; align-items: center; background-color: black; ">
<td id="thead"> Employee ID</td>
<td id="thead"> Employee Name</td>
<td id="thead"> Employee Salary</td>
<td id="thead"> Action</td>
<td id="thead"> Action</td>
</tr>
<%
List<Employee> employees = (List<Employee>) request.getAttribute("employee");
for (Employee employee : employees) {
%>
<tr style="width: 100%; display: flex; justify-content:space-between; align-items: center;">
    <td id="tbody"><%= employee.getEmpId()%></td>
    <td id="tbody"><%= employee.getEmpName()%></td>
    <td id="tbody"><%= employee.getEmpSal()%></td>
    
   <td id="tbody"><a href="<%=request.getContextPath()%>/employee/update?empId=<%=employee.getEmpId()%>"><button class="btn">Update</button></a></td>
   
    
    <td id="tbody"><a href="<%=request.getContextPath()%>/employee/deletedata?empId=<%=employee.getEmpId()%>"><button style="background-color: red;" class="btn">Delete</button></a></td>
</tr>

<% 
}
%>
</table>
<hr>
<h1 style="color: green; text-align: center;">${message}</h1>

<a style="display:block; text-align: center; text-decoration: none; " href="<%=request.getContextPath()%>/employee/">Click to Register New Employee</a>
</body>
</html>