<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib  prefix="spring" uri="http://www.springframework.org/tags"%>
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
<link href="dist/css/bootstrap.min.css" rel="stylesheet">
<script src="dist/js/jquery.min.js"></script>
<script src="dist/js/bootstrap.min.js"></script>

</head>

<style>
.ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    width: 200px;
    background-color: #f1f1f1;
}
 
.li_a {
    display: block;
    color: #000;
    padding: 8px 16px;
    text-decoration: none;
}
 
/* 鼠标移动到选项上修改背景颜色 */
.li_a_hover {
    background-color: #555;
    color: white;
}
</style>

<body>


	<nav class="navbar navbar-default navbar-fixed-top ">

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
				<li><a data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo">登录</a></li>
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
			</ul>
		</div>


	</nav>


	<div class="jumbotron">
		<div class="container">
	    	<div class="jumbotron">
				<h2>欢迎访问大连外国语大学教务管理系统</h2><br>
				<p><font size="3">大连外国语大学前身为大连日语专科学校，始建于1964年，是在周恩来总理等党和国家领导人的关怀下，为培养国家亟需的日语翻译人才而创建；
				1970年学校更名为辽宁外语专科学校，1978年升格为大连外国语学院，1986年获得硕士学位授予权，2013年更名为大连外国语大学</font></p><br>
				<p><a class="btn btn-primary btn-lg" href="http://xfjs.dlufl.edu.cn/" role="button">了解更多</a></p>
			</div>
		</div>
	</div>





	<!-- *************************************************************************************** -->
	<div class="container">
		<div class="row">
			<div class="col-xs-6 col-sm-3">
				<ul class="list-group">
				    <li class="list-group-item active">大连外国语大学</li>
				    <li class="list-group-item">学校概况</li>
				    <li class="list-group-item">新闻中心</li>
				    <li class="list-group-item">
				        <span class="badge">新</span>
				        期末考试安排
				    </li>
				    <li class="list-group-item">招生就业</li>
				    <li class="list-group-item">
				        <span class="badge">新</span>
				        2022秋季课程安排
				    </li>
				    <li class="list-group-item">地址：大连市旅顺南路西段6号</li>
				    <li class="list-group-item"><span href="user/i18n?locale=zh_CN"><spring:message code="author"></spring:message></span></li>
				</ul>
			</div>
			
			<div class="col-xs-6 col-sm-9">
				<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
					<!-- Indicators -->
					<ol class="carousel-indicators">
						<li data-target="#carousel-example-generic" data-slide-to="0"
							class="active"></li>
						<li data-target="#carousel-example-generic" data-slide-to="1"></li>
						<li data-target="#carousel-example-generic" data-slide-to="2"></li>
						<li data-target="#carousel-example-generic" data-slide-to="3"></li>
					</ol>
		
					<!-- Wrapper for slides -->
					<div class="carousel-inner" role="listbox">
						<div class="item active">
							<img src="images/轮播图/lunbo1.jpg" alt="1">
							<div class="carousel-caption"></div>
						</div>
						<div class="item">
							<img src="images/轮播图/lunbo3.jpg" alt="2">
							<div class="carousel-caption"></div>
						</div>
						<div class="item">
							<img src="images/轮播图/lunbo5.jpg" alt="3">
							<div class="carousel-caption"></div>
						</div>
						<div class="item">
							<img src="images/轮播图/lunbo6.jpg" alt="4">
							<div class="carousel-caption"></div>
						</div>
					</div>
		
					<!-- Controls -->
					<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev"> 
						<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
							<span class="sr-only">Previous</span>
					</a> 
					
					<a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next"> 
						<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
							<span class="sr-only">Next</span>
					</a>
				</div>
			</div>
		
			
		</div>
	</div>
	
	
	



	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	        <h4 class="modal-title" id="exampleModalLabel">登陆您的账号</h4>
	      </div>
	      <div class="modal-body">
	        <form class="form-horizontal" action="student/login"  method="post">
			<div class="form-group">
				<label  class="col-sm-4 control-label">登录账号</label>
						
				<div class="col-sm-5">
				      <input type="text" name="stuname"   class="form-control"  placeholder="请输入账号">
					
				</div> 
			</div>
			<br />
			<div class="form-group">
				<label  class="col-sm-4 control-label">密码</label>
				<div class="col-sm-5">
				<input type="password"  name="stupass" class="form-control"  placeholder="请输入密码" >
					
				</div>
			</div>
			
			<div class="form-group">
				<div class="col-sm-offset-4 col-sm-1">
					<button type="submit" class="btn btn-default">登录</button>
				</div>
				<div class="col-sm-offset-2 col-sm-1">
				  <button type="reset" class="btn btn-default">重置</button>			
				
				</div>
			</div>
		</form>
	      </div>
	      <div class="modal-footer">
	        <a  class="btn btn-default" href="admin/login" role="button">教师端入口</a>
	        
	      </div>
	    </div>
	  </div>
	</div>

	

	
	<!-- ***************************************************************************************8 -->


<%-- 	<nav class="navbar navbar-default ">

		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header" style="padding-left: 30px;">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">网站首页</a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
			
				<li><a href="login.jsp"><spring:message code="login"></spring:message></a></li>
				<li><a href="login.jsp">教师端登录</a></li>
				
			</ul>
			
		<!-- 
				<form action="##" class="navbar-form navbar-right" rol="search" style="padding-right: 30px;">
					<div class="form-group">
						<input type="text" class="form-control" placeholder="请输入关键词" />
					</div>
					<button type="submit" class="btn btn-default">搜索</button>
				</form>
	 -->



		</div>


	</nav> --%>

</body>
</html>
