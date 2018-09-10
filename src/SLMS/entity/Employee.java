package SLMS.entity;

public class Employee {
	private Integer id;
	private Integer employeeType;
	private String birthday;
	private String telephone;
	private String email;
	private int sex;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) { 
		this.id = id;
	}
	public Integer getEmployeeType() {
		return employeeType;
	}
	public void setEmployeeType(Integer employeeType) {
		this.employeeType = employeeType;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getSex() {
		return sex;
	}
	public void setSex(int sex) {
		this.sex = sex;
	}
	private String name;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	private String code;
    public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	private String password;
}
