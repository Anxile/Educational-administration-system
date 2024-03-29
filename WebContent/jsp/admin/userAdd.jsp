<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
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
<title>大连外国语大学 | Dalian University of Foreign Language</title>>
<!-- Bootstrap -->
<script src="dist/js/jquery.min.js"></script>
<script src="dist/js/bootstrap.min.js"></script>
<link href="dist/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>


  <c:if test="${not empty mess} }">
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
						style="font-family: '华文行楷'; font-size: 25px;">学生账号添加界面</h3>
				</div>
				<div class="panel-body">
					<br />
					<br />
					<br />
					<form class="form-horizontal" action="user/useradd" method="post">
						<div class="form-group">
							<label class="col-sm-4 control-label">类型名称</label>

							<div class="col-sm-4">
								<input type="text" name="stuname" class="form-control" placeholder="请输入用户名">
								<input type="password" name="stupass" class="form-control" placeholder="请输入密码">

							</div>
						</div>
						<br />
						
						<div class="form-group">
							<div class="col-sm-offset-4 col-sm-1">
								<button type="submit" class="btn btn-default">添加</button>
							</div>
							<div class="col-sm-offset-0 col-sm-2">
								<button type="reset" class="btn btn-default">重置</button>
				
							</div>
						</div>
					</form>
				</div>
			</div>


<!-- ******************************************************************************************** -->


		</div>
	</div>

</body>
</html>
