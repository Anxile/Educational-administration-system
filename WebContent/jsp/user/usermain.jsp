<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
<body>

	<jsp:include page="header.jsp"></jsp:include>

	 <!-- <div class="container">


		<div class="panel panel-success">
			<div class="panel-heading">大外新闻</div>
			<div class="panel-body">
				***************************************************8
				<div class="col-md-6 col-sm-4">
					<a href="#" class="thumbnail"> <img
						src="images/大外新闻1/news1.jpg"
						style="height: 180px; width: 100%; display: blue;" alt="" >
					</a>
					<div class="caption" style="text-align: center;">

						<p>中共大连外国语大学委员会一届七次全会召开</p>
						
						
					</div>
				</div>
				
				<div class="col-md-6 col-sm-4">
					<a href="#" class="thumbnail"> <img
						src="images/大外新闻1/news3.jpg"
						style="height: 180px; width: 100%; display: block;" alt="">
					</a>
					<div class="caption" style="text-align: center;">
						<p>
							大连外国语大学举行第八届教职工代表大会第六次全体会议
						</p>
					</div>
				</div>

			</div>


		</div>
	</div>  -->

	

	
	
</body>
</html>
