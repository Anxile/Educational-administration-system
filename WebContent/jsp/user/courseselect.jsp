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
		<form class="form-horizontal" action="course/selectCourses" method="post">
			<div style="padding: 20px">
				
				<h2>学期课程表</h2>
					<select id="mySelect">
						<option value="大三下">大三下</option>
						<option value="大三下">大四上</option>
						<option value="大三下">大四下</option>
					</select>
				
				
					<table class="table table-bordered">
						<caption>学期课程表</caption>
						<thead>
							<tr>
								<th><input type="text" id="1" name="week" value="星期一"
									size="10"></th>
							</tr>
						</thead>
						<tbody>		
							<c:forEach items="${courses}" var="c">
								<tr>
									<c:if test="${c.wid==1}">
										<td>${c.course}</td>
									</c:if>
								</tr>
							</c:forEach>
						</tbody>
						<thead>
							<tr>
								<th>
								<input type="text" id="1" name="week" value="星期二"size="10">
								</th>
							</tr>
						</thead>
						<tbody>			
							<c:forEach items="${courses}" var="c">
								<tr>
									<c:if test="${c.wid==2}">
										<td>${c.course}</td>
									</c:if>
								</tr>
							</c:forEach>
						</tbody>
						<thead>
							<tr>
								<th>
									<input type="text" id="1" name="week" value="星期三"size="10">
								</th>
							</tr>
						</thead>
						<tbody>			
							<c:forEach items="${courses}" var="c">
								<tr>
									<c:if test="${c.wid==3}">
										<td>${c.course}</td>
									</c:if>
								</tr>
							</c:forEach>
						</tbody>
						<thead>
							<tr>
								<th>
									<input type="text" id="4" name="week" value="星期四"size="10">
								</th>		
							</tr>
						</thead>
						<tbody>									
							<c:forEach items="${courses}" var="c">
								<tr>
									<c:if test="${c.wid==4}">
										<td>${c.course}</td>
									</c:if>
								</tr>
							</c:forEach>
						</tbody>
							<thead>
							<tr>
								<th>
									<input type="text" id="5" name="week" value="星期五"size="10">
								</th>				
							</tr>
						</thead>
						<tbody>			
							<c:forEach items="${courses}" var="c">
								<tr>
									<c:if test="${c.wid==5}">
										<td>${c.course}</td>
									</c:if>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<div class="text-center" style="margin-bottom: 0">
						<button type="submit" class="btn btn-default">查询</button>
					</div>

			</div>
		</form>
	</div>
</body>
</html>