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
	//访问员工列表
	@RequestMapping("/employee/list")
	public String employeeList(Model model) {
		//获取员工数据,b并传递到前台jsp
		List<Employee> list= employeeService.getEmployees();
		model.addAttribute("employees",list);
		return "employee/EmployeeList" ;
		
	}
	@RequestMapping("/employee/add")
    public String addEmployee() {
    	return "employee/addEmployee";
    }
	//编辑员工
	@RequestMapping("/employee/edit/{id}")
	public String editEmployee(@PathVariable ("id")int id,Model model) {
		//获取指定id的员工信息
		Employee employee=employeeService.getEmployeeById(id);
		model.addAttribute("employee",employee);
		return "employee/editEmployee";
	}
	@RequestMapping("/employee/add/do")
	@ResponseBody
	public String add(Employee employee) {
		//访问数据库 插入数据
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
		//访问数据库执行更新操作
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
		//执行栓除数据库操作
		int i=employeeService.deleteEmployee(id);
		if(i>0) {
			return "1";
		}else {
			return "0";
		}
	}
}
