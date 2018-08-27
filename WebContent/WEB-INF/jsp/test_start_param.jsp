<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<% 	request.setCharacterEncoding("utf-8");
	String path = request.getContextPath();  
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%> 
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>测试ModelDriven的成功页面并且用作参数测试</title>
</head>
<body>
${loginInfo }
<!-- 输出：提交的地址中声明的实体类的属性来用-->
name:<s:property value="name"/><br/>
age:<s:property value="age"/>
</body>
</html>