package in.sunil.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import in.sunil.entity.Employee;
import in.sunil.service.IEmployeeService;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestBody;

@Controller
@RequestMapping("/employee")
public class EmployeeController {
	
	@Autowired
	private IEmployeeService service;
	
	@GetMapping(value = {"/register" ,"/"})
	public String showForm() {
		return "EmployeeRegister";
	}
	

	@PostMapping("/save")
	public String readForm(@ModelAttribute Employee emp,Model model) {
		System.out.println(emp);
		Integer id = service.saveEmployee(emp);
		String message="Employee "+id+" created";
		model.addAttribute("message", message);
		return  "EmployeeRegister";
	}
	
	@GetMapping("/getdata")
	public String getAllEmployee(Model model) {
		List<Employee> employees = service.getAllEmployees();
		model.addAttribute("list", employees);
		return "AllEmployees";
	}
	
	@GetMapping("/deletedata")
	public String deleteEmployee(@RequestParam Integer empId,RedirectAttributes redirect) {
		service.deleteEmployee(empId);
		String message="Employee "+empId+" deleted";
		redirect.addFlashAttribute("message", message);
		return  "redirect:getdata";
	}
	
	@GetMapping("/update/{empId}")
	public String  updateData(@PathVariable Integer empId,Model model) {
		Employee employee = service.getOneEmployee(empId);
		model.addAttribute("employee",employee);
		return "UpdateEmp";
	}
	
	@PostMapping("/modify")	
	public String upadte(@ModelAttribute Employee emp,RedirectAttributes redirect) {
		
		Integer id = service.saveEmployee(emp);
		String message="Employee "+id+" Updated";
		redirect.addFlashAttribute("message", message);
		return "redirect:getdata";
	}

}
