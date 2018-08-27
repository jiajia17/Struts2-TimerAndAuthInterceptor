package com.jinan.www.actions;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class TestAction extends ActionSupport {

	private String username;
	private String password;
	private Map<String, Object> session;
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	public String execute() throws Exception {
		
		//只要运行此方法就返回success字符串，也就是只要调用此方法就能正确返回
		for (int i = 0; i <10000; i++) {
			System.out.println("为了计算action执行时间而占用时间片输出的代码");
		}
		return SUCCESS;
		
		
	}
	
	public  String login() throws Exception {
		//这个方法就不是简单的返回了。我们需要使用三种获取前台参数方法中的一种来获取前台数据，根据
		//前台数据是否符合我们登录的条件，然后返回不同的字符串，跳转到不同的页面。
		if("admin".equals(username)&&"1".equals(password)) {
			ActionContext actionContext = ActionContext.getContext();
			Map<String , Object> session = actionContext.getSession();
			session.put("loginInfo", username);
			return SUCCESS;
		}else {
			ActionContext actionContext = ActionContext.getContext();
			Map<String , Object> session = actionContext.getSession();
			session.put("loginError", "对不起账号或者密码有误，请重新登录");
			return "login";
		}
		
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	
	
	
	
}
