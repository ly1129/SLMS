package SLMS.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import SLMS.entity.Employee;
import SLMS.service.EmployeeService;

@Controller
public class EmployeeController {
	@Autowired
	private EmployeeService employeeService;
	//����Ա���б�
	@RequestMapping("/employee/list")
	public String employeeList(Model model) {
		//��ȡԱ������,b�����ݵ�ǰ̨jsp
		List<Employee> list= employeeService.getEmployees();
		model.addAttribute("employees",list);
		return "employee/EmployeeList" ;
		
	}
	@RequestMapping("/employee/add")
    public String addEmployee() {
    	return "employee/addEmployee";
    }
	//�༭Ա��
	@RequestMapping("/employee/edit/{id}")
	public String editEmployee(@PathVariable ("id")int id,Model model) {
		//��ȡָ��id��Ա����Ϣ
		Employee employee=employeeService.getEmployeeById(id);
		model.addAttribute("employee",employee);
		return "employee/editEmployee";
	}
	@RequestMapping("/employee/add/do")
	@ResponseBody
	public String add(Employee employee) {
		//�������ݿ� ��������
		int i=employeeService.addEmployee(employee);
		if(i>0) {
			return "1";
		}else {
			return "0";
		}
	}
	@RequestMapping("/employee/updata")
	@ResponseBody
	public String update(Employee employee) {
		//�������ݿ�ִ�и��²���
		int i=employeeService.updateEmployee(employee);
		if(i>0) {
			return "1";
		}else {
			return "0";
		}
		
	}
	@RequestMapping("/employee/del")
	@ResponseBody
	public String delete(int id) {
		//ִ��˨�����ݿ����
		int i=employeeService.deleteEmployee(id);
		if(i>0) {
			return "1";
		}else {
			return "0";
		}
	}
}
