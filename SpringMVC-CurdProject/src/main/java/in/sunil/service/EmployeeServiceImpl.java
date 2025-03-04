package in.sunil.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import in.sunil.dao.EmployeeDAO;
import in.sunil.entity.Employee;

@Service
public class EmployeeServiceImpl  implements IEmployeeService{

	@Autowired
	private EmployeeDAO repo;
	
	
	@Override
	public Integer saveEmployee(Employee emp) {
		
		return repo.save(emp).getEmpId();
	}

	@Override
	public List<Employee> getAllEmployees() {
		return repo.findAll();
	}

	@Override
	public Employee getOneEmployee(Integer id) {
		return repo.findById(id).get();
	}

	@Override
	public void updateEmployee(Employee emp) {
		 repo.save(emp);
	}

	@Override
	public void deleteEmployee(Integer id) {
		Optional<Employee> byId = repo.findById(id);
		if(byId.isPresent()) {
			repo.delete(byId.get());
		}
	}
}
