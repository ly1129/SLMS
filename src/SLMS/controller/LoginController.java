package SLMS.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import SLMS.entity.Employee;
import SLMS.service.EmployeeService;
import SLMS.service.LoginService;

@Controller
@SessionAttributes("curEmployee")
public class LoginController {
	@Autowired
	private LoginService loginService;
	@Autowired
	private EmployeeService employSerice;
	
	//用于访问登陆页面
	@RequestMapping("/login")
	public String login(){
		return "login";
	}
	@RequestMapping("/welcome")
	public String welcome(HttpSession session) {
		Employee employee1=(Employee)session.getAttribute("curEmployee");
		System.out.println(employee1.getName());
		return "welcome";
	}
	
	//用于接收用户表单提交请求
	@RequestMapping("/submit")
	public String login_submit(String code,String password,Model model){
		boolean result=loginService.execute(code, password);
		if(result){
			//将用户信息保存到session
			//从数据库查询用户信息
			Employee employee=new Employee();
			employee.setCode(code);
			employee.setPassword(password);
			Employee employee1=employSerice.getemployee(employee);
			model.addAttribute("curEmployee",employee1);
			return "login/login_succ";
		}else{
			return "login/login_fail";
		}
	}
	//退出登陆
	@RequestMapping("/logout")
	public String logout(SessionStatus sessionStatus){
		sessionStatus.setComplete();
		return "login";
	}

}