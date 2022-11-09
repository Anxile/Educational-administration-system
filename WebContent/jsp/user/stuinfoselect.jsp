<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>大连外国语大学 | Dalian University of Foreign Language</title>

<link href="dist/css/bootstrap.min.css" rel="stylesheet">
<script src="dist/js/jquery.min.js"></script>
<script src="dist/js/bootstrap.min.js"></script>


</head>
<body>

	<c:if test="${not empty mess  }">
		<script type="text/javascript">
			alert("${mess}")
		</script>

	</c:if>

	<div class="jumbotron text-center" style="margin-bottom: 0">
		<h1>欢迎${student.stuname}同学</h1>
	</div>

	<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand">大连外国语大学官网</a>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav">
				<li class="active"><a href="#">主页</a></li>


			</ul>
		</div>
	</div>
	</nav>

	<div class="container">
		<div class="row">

			<div class="col-sm-12">
				<h2>个人信息表</h2>
				<div style="padding: 100px 100px 10px;">

					<form class="form-horizontal" 
						action="student/stuinfoselectById" method="post"
						 enctype="multipart/form-data">


						<input type="hidden" name="student.sid" />


						<div class="input-group">
							<span class="input-group-addon">姓名</span> <input type="text"
								name="stuname"  class="form-control" value="${student.stuname} "/>
						</div>
						<br>
						<div class="input-group">
							<span class="input-group-addon">专业</span> <input type="text"
								name="stumajor" class="form-control" value="${student.stumajor}"/>
						</div>
						<br>
						<div class="input-group">
							<span class="input-group-addon">学院</span> <input type="text"
								name="stucollege" class="form-control" value="${student.stucollege}"/>
						</div>
						<br>
						<div class="input-group">
							<span class="input-group-addon">性别</span> <input type="text"
								name="stusex" class="form-control" value="${student.stusex}"/>
						</div>
						<br>
						<div class="input-group">
							<span class="input-group-addon">出生年月日</span> <input type="text"
								name="stubirth" class="form-control" value="${student.stubirth}"/>

						</div>
						<br>
						<div class="input-group">
							<span class="input-group-addon">电话号码</span> <input type="text"
								name="stuphone" class="form-control" value="${student.stuphone}"/>
						</div>
						<br>
				</form>
				</div>

			</div>
			<br>
		</div>
	</div>
	</div>

	<div class="jumbotron text-center" style="margin-bottom: 0">
		<p>个人信息</p>
	</div>

</body>
</html>