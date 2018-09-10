<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<html>
<head>
<title>Insert title here</title>
<script type="text/javascript" src="/SLMS/scripts/jquery-1.12.4.min.js"></script>
<script  type="text/javascript">
//页面加载完成后才能赋值
    $(function(){
    	$("#employeeType").val(${employee.employeeType});
    	$("#sex").val(${employee.sex});
    })
    function update(){
    	var code=$("#code").val();
    	var password=$("#password").val();
    	var employeeType=$("#employeeType").val();
    	if(code==""){
    		alert("用户编号不能为空");
    		return;
    	}
    	if(password==""){
    		alert("用户密码不能为空");
    		return;
    	}
	//发送异步请求
	var url="/SLMS/employee/updata";
	var param=$("#form").serialize();
	$.post(url,param,function(data){
		if(data=="1"){
			location.href="/SLMS/employee/list";
		}else{
			alert("员工修改失败!");
		}
	});
	
}
</script>
</head>
<body>
	<form id="form">
		<table>
			<tr>
				<td>员工编号：</td>
				<td><input type="text" name="code" value="${employee.code}" /></td>
			</tr>
			<tr>
				<td>登录密码：</td>
				<td><input type="password" name="password"  value="${employee.password}" /></td>
			</tr>
			<tr>
				<td>员工类型：</td>
				<td><select id="employeeType" name="employeeType" style="width: 160px">
						<option value="3">管理员</option>
						<option value="1">销售人员</option>
						<option value="2">采购人员</option>
				</select></td>
			</tr>
			<tr>
				<td>员工姓名：</td>
				<td><input type="text" name="name" value="${employee.name}" /></td>
			</tr>
			<tr>
				<td>员工生日：</td>
				<td><input type="text" name="birthday" value="${employee.birthday}"  onclick="c.show(this);" /></td>
			</tr>
			<tr>
				<td>员工性别：</td>
				<td><select name="sex" id="sex" style="width: 160px">
						<option value="0">女</option>
						<option value="1">男</option>
				</select>
			<tr>
				<td>员工手机：</td>
				<td><input type="text" name="telephone" value="${employee.telephone}"/></td>
			</tr>
			<tr>
				<td>员工Email：</td>
				<td><input type="text" name="email" value="${employee.email}" /></td>
			</tr>
			<tr>
				<td colspan="2" style="text-align: center"><input type="button" onclick="update()"
					 value="修改员工" /></td>
			</tr>
		</table>
		<input type="hidden" name="id" value="${employee.id }">
	</form>
</body>
</html>