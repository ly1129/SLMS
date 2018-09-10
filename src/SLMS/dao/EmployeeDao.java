package SLMS.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import SLMS.entity.Employee;

@Repository
	public interface EmployeeDao {
		//����������ȡ�û�
		Employee getemployee(Employee employee);
		
		List<Employee>getEmployees();
		
		int addEmployee(Employee employee);
		
		Employee  getEmployeeById (int id);
		int updateEmployee(Employee employee);
		int deleteEmployee(int id);
	}

