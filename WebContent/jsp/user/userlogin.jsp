<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="form"  uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <base href="<%=basePath%>">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>登录|大连外国语大学学生信息管理系统</title>
<!-- Bootstrap -->

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
  
  
  	<div class="panel panel-info">
				<div class="panel-heading">
					<h3 class="panel-title" style="font-family: '华文行楷'; font-size: 25px;">学生端登录</h3>
				</div>
				<div class="panel-body">
					<br /><br /><br />
	<form class="form-horizontal" action="student/login"  method="post">
		<div class="form-group">
			<label  class="col-sm-4 control-label">登录账号</label>
					
			<div class="col-sm-4">
			      <input type="text" name="stuname"   class="form-control"  placeholder="请输入账号">
				
			</div> 
		</div>
		<br />
		<div class="form-group">
			<label  class="col-sm-4 control-label">密码</label>
			<div class="col-sm-4">
			<input type="password"  name="stupass" class="form-control"  placeholder="请输入密码" >
				
			</div>
		</div>
		
		<div class="form-group">
			<div class="col-sm-offset-4 col-sm-1">
				<button type="submit" class="btn btn-default">登录</button>
			</div>
			<div class="col-sm-offset-0 col-sm-2">
			  <button type="reset" class="btn btn-default">重置</button>			
			
			</div>
		</div>
	</form>
	</div>
	</div>

  </body>
</html>
