<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/SLMS/scripts/jquery-1.12.4.min.js"></script>

<style type="text/css"> 
       .table {
            border: 1px solid #ddd;
            border-collapse: collapse;
        }

        .table thead tr th,
        .table tbody tr td {
            padding: 8px 12px;
            text-align: center;
            color: #333;
            border: 1px solid #ddd;
            border-collapse: collapse;
            background-color: #fff;
        }
    </style> 
	<script type="text/javascript">
function jump(){
	location.href="/SLMS/employee/add";
}
function del(id){
	var result=confirm("您确定要删除么?");
	if(result){
		//执行删除
		var url="/SLMS/employee/del";
		var param={id:id};
		$.post(url,param,function(data){
			if(data=="1"){
				alert("删除成功");
				location.reload();
			}else{
				alert("删除失败");
			}
			
		});
	}
}
</script>
</head>
<body>
	<div style="padding-top:20px;padding-bottom:20px""><input type="button" onclick="jump()" value="新增员工"/></div>
	 <table class="table" cellspacing="0" cellpadding="0">
    <thead>
        <th>员工编号</th>
        <th>员工类型</th>
        <th>姓名</th>
        <th>生日</th>
        <th>性别</th>
        <th>电话</th>
        <th>邮箱</th>
        <th colspan="2">操作</th> 
    </thead>
    <tbody>
     <c:forEach items="${employees}" var="item">
           <tr>
					<td>${item.code}</td>
					<c:choose>
						<c:when test="${item.employeeType==1}">
							<td>销售人员</td>
						</c:when>
						<c:when test="${item.employeeType==2}">
							<td>采购人员</td>
						</c:when>
						<c:when test="${item.employeeType==3}">
							<td>管理员</td>
						</c:when>
					</c:choose>

					<td>${item.name}</td>
					<td>${item.birthday}</td>
					<c:choose>
						<c:when test="${item.sex==0}">
							<td>女</td>
						</c:when>
						<c:when test="${item.sex==1}">
							<td>男</td>
						</c:when>
					</c:choose>

					<td>${item.telephone}</td>
					<td>${item.email}</td>
			        <td> <a href="/SLMS/employee/edit/${item.id} ">编辑</a></td>
			         <td> <a onclick="del(${item.id})" href="#">删除</a></td>
			        </tr>
			</c:forEach>
    </tbody>
</table>
</body>
</html>