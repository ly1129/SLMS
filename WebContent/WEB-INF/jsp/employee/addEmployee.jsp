<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
<script type="text/javascript" src="/SLMS/scripts/calendar5.js"></script>
<script type="text/javascript" src="/SLMS/scripts/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
    var c = new Calendar("c");                     
    document.write(c);
    
    function add(){
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
    
    //开始发送异步ajax请求
    var url="/SLMS/employee/add/do";
    var param=$("#form").serialize();
    $.post(url,param,function(data){
    	if(data=="1"){
    		location.href="/SLMS/employee/list";
    	}else{
    		alert("新增失败");
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
				<td><input type="text" id="code" name="code" /></td>
			</tr>
			<tr>
				<td>登录密码：</td>
				<td><input type="password" id="password" name="password" /></td>
			</tr>
			<tr>
				<td>员工类型：</td>
				<td><select name="employeeType" id="employeeType" style="width: 160px">
						<option value="3">管理员</option>
						<option value="1">销售人员</option>
						<option value="2">采购人员</option>
				</select></td>
			</tr>
			<tr>
				<td>员工姓名：</td>
				<td><input type="text" name="name" /></td>
			</tr>
			<tr>
				<td>员工生日：</td>
				<td><input type="text" name="birthday" onclick="c.show(this);" /></td>
			</tr>
			<tr>
				<td>员工性别：</td>
				<td><select name="sex" style="width: 160px">
						<option value="0">女</option>
						<option value="1">男</option>
				</select>
			<tr>
				<td>员工手机：</td>
				<td><input type="text" name="telephone" /></td>
			</tr>
			<tr>
				<td>员工Email：</td>
				<td><input type="text" name="email" /></td>
			</tr>
			<tr>
				<td colspan="2" style="text-align: center"><input type="button" onclick="add()"
					 value="新增员工" /></td>
			</tr>
		</table>
	</form>
</body>
</html>