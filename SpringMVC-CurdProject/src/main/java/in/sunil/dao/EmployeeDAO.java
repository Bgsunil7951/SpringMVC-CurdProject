package in.sunil.dao;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import in.sunil.entity.Employee;

public interface EmployeeDAO extends JpaRepository<Employee, Integer> {


}
