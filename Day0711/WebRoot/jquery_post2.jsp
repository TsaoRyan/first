<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'jquery_post2.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript" src="js/jquery-3.2.1.js"></script>
	<script type="text/javascript">
		$(function(){
			$("#btn").click(function(){
				//1.把表单序列化为数组
				var $array=$()
			})
		})
	</script>
  </head>
  
  <body>
    <form action="" method="" id="form1">
    	<p>
    		用户名：<input type="text" name="username" />
    	</p>
    	<p>
    		密码：<input type="password" name="pwd" />
    	</p>
    	<p>
    		确认密码：<input type="password" name="repwd" />
    	</p>
    	<p>
    		<input type="button" id="btn" value="提交" />
    	</p>
    </form>
  </body>
</html>
