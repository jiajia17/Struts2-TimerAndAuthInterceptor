<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<% 	request.setCharacterEncoding("utf-8");
	String path = request.getContextPath();  
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>测试action的起始页面</title>
</head>
<body>
${loginError }
<hr/>
<a href="testAction1">点击跳转到testAction1(没加任何的验证，跳转过去就能跳到成功的页面)</a>
<hr/>

<a>而下面的表单就加入了登录验证，如果账号密码是我们认证通过的我们才会跳转到成功的页面，提交到testAction2</a>
<form action="testAction2" method="post">
	<input type="text" name="username"><br/>
	<input type="password" name="password"><br/>
	<input type="submit" value="提交">
	<input type="reset" value="重置">
	
</form>
以上是为了测试step1而写的代码，而且使用的是基本参数形式获取的前台数据，下面的部分要使用domainModel的形式获取数据，<br/>
并且要加入权限验证。（原理是自定义拦截器，从session中取，如果有数据，可以在浏览器直接敲action名称而访问到web-inf下的成功界面
test_start_end.jsp
<form action="authAction" method="post">
	<input type="text" name="user.username"><br/>
	<input type="password" name="user.password"><br/>
	<input type="submit" value="提交">
	<input type="reset" value="重置">
	
</form>
<hr/>
下面的form是为了测试step3的前台以ModelDriven形式往后台传递参数，并且测试后台往前台发送数据的各种方式<br/>
<form action="paramAction" method="post">
	<input type="text" name="name"><br/>
	<input type="text" name="age"><br/>
	<input type="submit" value="提交">
	<input type="reset" value="重置">
	
</form>
<hr/>
	一 和Servlet API耦合的访问方式<br/>
1---HttpServletRequest request = ServletActionContext.getRequest ();<br/>
	request.setAttribute("key",Object);<br/>
2---ServletContext application = ServletActionContext.getServletContext ();<br/>
	application.setAttribute("key",Object);<br/>
3---HttpSession session = ServletActionContext.getRequest ().getSession();<br/>
	session.setAttribute("key",Object);<br/>

	二 和Servlet API解耦的访问方式<br/>
1---ActionContext context= ActionContext.getContext();<br/>
	Map request = (Map)context.get("request");<br/>
	request.put("key",Object);<br/>
2---ActionContext context= ActionContext.getContext();<br/>
	Map application = (Map)context.getApplication();<br/>
	application.put("key",Object);<br/>
3---ActionContext context= ActionContext.getContext();<br/>
	Map session = (Map)context.getSession();<br/>
	session.put("key",Object);<br/>
	<hr/>
总结一下用来传递参数的对象有：<br/>

1、 采用Request （HttpServletRequest）对象来传递数据<br/>

2、采用application (ServletContext) 对象来传递数据<br/>

3、采用session (HttpSession) 对象来传递数据<br/>



4、采用Request （HttpServletRequest对应的Map对象）对象来传递数据<br/>

5、采用application (ServletContext对应的Map对象) 对象来传递数据<br/>

6、采用session (HttpSession对应的Map对象) 对象来传递数据<br/>

</body>
</html>