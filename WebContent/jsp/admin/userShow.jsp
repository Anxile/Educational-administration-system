<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
<base href="<%=basePath%>">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
<title>大连外国语大学 | Dalian University of Foreign Language</title>
<!-- Bootstrap -->
<script src="dist/js/jquery.min.js"></script>
<script src="dist/js/bootstrap.min.js"></script>
<link href="dist/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>

	<c:if test="${not empty mess  }">
		<script type="text/javascript">
			alert("${mess}")
		</script>

	</c:if>

	<!-- 导航栏开始 -->
	<%@include file="header.jsp"%>
	<!-- 导航栏结束 -->

	<!-- 正文开始 -->
	<div class="row">
		<div class="col-md-2">
			<!-- 左侧导航栏开始 -->
			<%@include file="menu.jsp"%>
			<!-- 左侧导航栏结束 -->
		</div>


		<div class="col-md-10">

			<!-- ********************************************************************************************* -->
			<div class="panel panel-info">
				<div class="panel-heading">
					<h3 class="panel-title"
						style="font-family: '华文行楷'; font-size: 25px; text-align: center;" >学生信息管理界面</h3>
				</div>
				<div class="panel-body">
					<!-- ************************************************************************* -->

					<table class="table table-striped table-bordered table-hover">
						<thead >
							<tr >
								<th style="text-align: center;">学号</th>
								<th style="text-align: center;">学生姓名</th>
								<th style="text-align: center;">密码</th>
								<th style="text-align: center;">操作</th>
							</tr>
						</thead>
						<tbody style="text-align: center;">
					    	
						<c:forEach items="${users}" var="s"  varStatus="v">
						
							<tr>
								<td>${s.sid}</td>
								<td>${s.stuname}</td>
								<td>${s.stupass}</td>
								
								<td><a href="user/selectUserById?sid=${s.sid}" >修改密码</a> 
								    <a href="user/deleteUserById?sid=${s.sid}" onclick="return confirm(确定要删除吗)">删除账户</a></td> 
								    
							</tr>
						</c:forEach>	
							
							
						</tbody>
					</table>



					<!-- *********************************************************************** -->
				</div>
			</div>


			<!-- ******************************************************************************************** -->


		</div>
	</div>

</body>
</html>
