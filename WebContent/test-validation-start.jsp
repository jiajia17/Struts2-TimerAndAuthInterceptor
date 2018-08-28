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
<title>测试数据校验开始页面</title>
</head>
<body>
<s:form method="post" action="testValidation">
	<s:textfield name="name" label="姓名"></s:textfield>
	<s:textfield name="age" label="年龄"></s:textfield>
	<s:submit value="提交"></s:submit>
</s:form>
</body>
</html>