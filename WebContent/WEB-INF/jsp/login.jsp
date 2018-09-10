<%@ page language="java" pageEncoding="UTF-8"%>
<html>
	<body>
		<form method="post" action= "/SLMS/submit" name="login">
			<h1>用户登录</h1>
			用户编号：<input type=text name='code'> <br>
			密码：<input type=password name='password'> <br>
			<input type="submit" name="cmdOK" value="提  交"> &nbsp; 
			<input type="reset" name="cmdCancel" value="重  置">
		</form>
	</body>
</html>
