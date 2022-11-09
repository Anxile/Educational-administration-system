<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

	<nav class="navbar navbar-default  ">

		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header" style="padding-left: 25px;">
			<!-- <button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="sr-only">Toggle navigation</span> 
				<span class="icon-bar"></span>
				<span class="icon-bar"></span> 
				<span class="icon-bar"></span>
			</button> -->
			<a class="navbar-brand" href="http://xfjs.dlufl.edu.cn/">大连外国语大学 <span class="badge badge-dark">公办高校</span></a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li><a href="user/i18n?locale=zh_CN"><spring:message code="cn"></spring:message></a></li>
				<li><a href="user/i18n?locale=en_US"><spring:message code="en"></spring:message></a></li>
				<li><a href="user/i18n?locale=ia_JP"><spring:message code="ia"></spring:message></a></li>
				<li><a href="user/i18n?locale=ko_KR"><spring:message code="ko"></spring:message></a></li>
			</ul>



			<ul class="nav navbar-nav navbar-right" style="padding-right: 30px;">
				<li><a href="#">学校简介</a></li>
				<li class="dropdown">
				<a href="#" class="dropdown-toggle"  data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">学院概况 <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#">软件学院</a></li>
						<li><a href="#">英语学院</a></li>
						<li><a href="#">日语学院</a></li>
						<li><a href="#">韩语学院</a></li>
					</ul></li>
				<li><a href="#">关于我们</a></li>
				<li><a href="">注销</a></li>
			</ul>
		</div>
	</nav>

	<div class="container">
		<div class="row">
			<div class="col-sm-4">
				<h2>我的头像</h2>
				<img alt="" src="uploadfile/${filename}" width="200px" />

				<form action="user/upOneFile" method="post"
					enctype="multipart/form-data">
					上传文件:<input type="file" name="upfile" /> <br> <input
						type="submit" value="上传">
				</form>
				
				<hr class="hidden-sm hidden-md hidden-lg">
			</div>
			<div class="col-sm-8">
				<h2>个人信息表</h2>
				<h5>按照下面表格填写个人信息</h5>
				<div style="padding: 100px 100px 10px;">
					<form class="form-horizontal" action="student/stuinfadd"
						method="post">

						<div class="input-group">
							<span class="input-group-addon">姓名</span> <input type="text"
							name="stuname"	class="form-control" >
						</div>
						<br>
						<div class="input-group">
							<span class="input-group-addon">专业</span> <input type="text"
							name="stumajor"	class="form-control" >
						</div>
						<br>
						<div class="input-group">
							<span class="input-group-addon">学院</span> <input type="text"
							name="stucollege"	class="form-control">
						</div>
						<br>
						<div class="input-group">
							<span class="input-group-addon">性别</span> <input type="text"
							name="stusex"	class="form-control">
						</div>
						<br>
						<div class="input-group">
							<span class="input-group-addon">出生年月日</span> <input type="text"
							name="stubirth"	class="form-control">

						</div>
						<br>
						<div class="input-group">
							<span class="input-group-addon">电话号码</span> <input type="text"
							name="stuphone"	class="form-control">
						</div>
						<br>
						<div class="form-group">
							<div class="col-sm-offset-4 col-sm-1">
								<button type="submit" class="btn btn-default">提交</button>
							</div>

							<div class="col-sm-offset-1 col-sm-2">
								<button type="reset" class="btn btn-default">重置</button>

							</div>
						</div>
					</form>
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