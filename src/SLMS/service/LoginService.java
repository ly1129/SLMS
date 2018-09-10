package SLMS.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import SLMS.dao.EmployeeDao;
import SLMS.entity.Employee;

@Service
public class LoginService {
	@Autowired
	private EmployeeDao employeedao;
	
	//判断用户是否登陆成功
	public boolean execute(String code,String password){
		Employee employee=new Employee();
		employee.setCode(code);
		employee.setPassword(password);
		Employee e=employeedao.getemployee(employee);
		if(e!=null){
			return true;
		}else{
			return false;
		}
	}
}
