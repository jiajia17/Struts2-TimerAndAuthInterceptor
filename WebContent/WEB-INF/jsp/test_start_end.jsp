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
<title>测试action的成功页面</title>
</head>
<body>
${loginInfo }
正常跳转后的页面
<hr/>
<s:property value="username"/>
<s:property value="password"/>
<hr/>
<s:property value="user.username"/>
<s:property value="user.password"/>
</body>
</html>