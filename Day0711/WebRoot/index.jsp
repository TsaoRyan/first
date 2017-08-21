<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript" >
		//1.创建XMLHttpRequest对象
		var xhr=null;
		function sendAjax(){
		if(window.XMLHttpRequest){
			xhr=new XMLHttpRequest();
		}else{
			xhr=new ActiveObject("Microsoft.XMLHTTP");
		}
		//2.设置回调函数
		if(xhr!=null){
			xhr.onreadystatechange=state_change;
		}
		//3.打开
		xhr.open("get","http://localhost:8080/Day0711/MyServlet?name=zhangsan",true);
		//4.发送请求
		xhr.send(null);	
		}
		function state_change(){
		//服务器相应数据完毕 404 500
			if(xhr.readyState==4){
				if(xhr.status==200){
					alert(xhr.responseText);
				}else{
					alert("响应失败:"+xhr.responseText);
				}
			}
		}
	</script>
  </head>
  <body>
    <input type="button" />
  </body>
</html>