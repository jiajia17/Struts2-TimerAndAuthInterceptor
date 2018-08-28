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
<title>为action配置不同校验配置注册页面</title>
</head>
<body>
<s:form action="testValidation1register" method="post">
<s:textfield name="username" label="用户名"></s:textfield>
<s:password name="password1" label="输入密码"></s:password>
<s:password name="password2" label="确认密码"></s:password>
<s:submit value="提交"></s:submit>
<s:reset value="重置"></s:reset>
</s:form>

</body>
</html>