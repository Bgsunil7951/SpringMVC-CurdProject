package in.sunil.service;

import java.util.List;

import in.sunil.entity.Employee;

public interface IEmployeeService {
	
	public Integer saveEmployee(Employee emp);
	
	public List<Employee> getAllEmployees();
	
	public  Employee getOneEmployee(Integer id);
	
	public void updateEmployee(Employee emp);
	
	public void deleteEmployee(Integer id);
	
	

}
