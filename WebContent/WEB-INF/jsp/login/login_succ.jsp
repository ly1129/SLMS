<%@ page language="java" pageEncoding="UTF-8"%>
<html>
<body>
	<div style="text-align: center;">
		<h1>SLMS进销存管理系统<a href="/SLMS/logout" style="padding-left:100px;font-size:15pt">退出登录</a></h1>
	</div>
	<div style="width: 15%; float: left">
		<ul style="list-style-type: none;">
			<li><a href="#">基础信息管理</a></li>
			<li style="text-indent: 20"><a target="iframe_a" href="/SLMS/employee/list">员工信息维护</a></li>
			<li style="text-indent: 20"><a href="#">商品信息维护</a></li>
			<li style="text-indent: 20"><a href="#">客户信息维护</a></li>
			<li><a href="#">业务数据管理</a></li>
			<li style="text-indent: 20"><a href="#">销售订单管理</a></li>
			<li style="text-indent: 20"><a href="#">采购订单管理</a></li>

		</ul>
	</div>
	<iframe src="/SLMS/welcome"  name="iframe_a" frameborder="1" width="80%"
		height="100%">
		
	</iframe>
</body>
</html>
