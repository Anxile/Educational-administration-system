<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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

	<div class="panel panel-info">

		<div class="panel-body">
			<br /> <br /> <br />
			<form:form class="form-horizontal" action="user/updateUserById"
				method="post" modelAttribute="users" enctype="multipart/form-data">

				<form:hidden path="sid" />

				<div class="form-group">
					<label class="col-sm-4 control-label">新密码</label>

					<div class="col-sm-4">
						<form:input  path="stupass" class="form-control"
							placeholder="新密码"/>

					</div>
				</div>
				<br />

				<div class="form-group">
					<div class="col-sm-offset-4 col-sm-1">
						<button type="submit" class="btn btn-default">确认</button>
					</div>
					<div class="col-sm-offset-0 col-sm-2">
						<button type="reset" class="btn btn-default">重置</button>

					</div>
				</div>
			</form:form>
		</div>
	</div>

</body>
</html>
