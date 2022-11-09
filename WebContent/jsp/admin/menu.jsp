<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
<title>大连外国语大学 | Dalian University of Foreign Language</title>
<!-- Bootstrap -->
<link href="dist/css/bootstrap.min.css" rel="stylesheet">
	<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>	
	<script type="text/javascript" src="dist/js/bootstrap.min.js"></script>
    
</head>
  <body> 
  <div class="panel-group" id="accordion">
	<div class="panel panel-default">
		<div class="panel-heading">
			<h4 class="panel-title">
				<a href="#">主页</a>
			</h4>
		</div>
	</div>
	<div class="panel panel-default">
		<div class="panel-heading">
			<h4 class="panel-title">
				<a data-toggle="collapse" data-parent="#accordion"
					href="#collapse1">学生信息管理</a>
			</h4>
		</div>
		<div id="collapse1" class="panel-collapse collapse">
			<div class="list-group">
				<a href="jsp/admin/userAdd.jsp"	class="list-group-item">添加学生</a> 
				<a href="user/selectUser"	class="list-group-item">查看学生</a> 

			</div>
		</div>
	</div>
	
		<div class="panel panel-default">
		<div class="panel-heading">
			<h4 class="panel-title">
				<a data-toggle="collapse" data-parent="#accordion"
					href="#collapse3">年级信息管理</a>
			</h4>
		</div>
		<div id="collapse3" class="panel-collapse collapse">
			<div class="list-group">
				<a href="jsp/admin/gradeAdd.jsp"	class="list-group-item">年级管理</a> 
				<a href="jsp/admin/gradeAdd.jsp"	class="list-group-item">年级备注</a> 
				
			</div>
		</div>
	</div>
	
	<div class="panel panel-default">
		<div class="panel-heading">
			<h4 class="panel-title">
				<a data-toggle="collapse" data-parent="#accordion"
					href="#collapse2">班级信息管理</a>
			</h4>
		</div>
		<div id="collapse2" class="panel-collapse collapse">
			<div class="list-group">
				<a href="admin/getAddGoods"	class="list-group-item">班级名称</a> 
				<a href="admin/selectGoodsByPage?currPage=1"	class="list-group-item">所属年级</a> 

			</div>
		</div>
	</div>
	

	
	<div class="panel panel-default">
			<div id="collapse5" class="panel-collapse collapse">
			<div class="list-group">
				<a href="admin/getAddGoods"	class="list-group-item">成绩信息管理</a><br> 
				<a href="admin/selectGoodsByPage?currPage=1"	class="list-group-item">期末成绩单</a> 

			</div>
		</div>
		
	</div>

	</div>

  </body>
</html>
