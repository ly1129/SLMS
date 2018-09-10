package SLMS.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import SLMS.dao.EmployeeDao;
import SLMS.entity.Employee;

@Service
public class EmployeeService {
	@Autowired
	private EmployeeDao employeedao;
	public Employee getemployee(Employee employee) {
		return employeedao.getemployee(employee);	
	}
 public List<Employee>getEmployees(){
	 return employeedao.getEmployees();
	 
 }
 public int addEmployee(Employee employee) {
	return employeedao.addEmployee(employee);
	
	
 }
    public Employee  getEmployeeById (int id) {
    	return employeedao.getEmployeeById(id);
    }
    public int updateEmployee(Employee employee) {
    	return employeedao.updateEmployee(employee);
    }
    
    public int deleteEmployee(int id) {
    	return employeedao.deleteEmployee(id);
    }
}
