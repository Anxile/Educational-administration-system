<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
		
		
		<div class="col-md-10">欢迎来到学生管理系统</div>
	</div>

  </body>
</html>
