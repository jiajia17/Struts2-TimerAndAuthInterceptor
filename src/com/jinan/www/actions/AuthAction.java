package com.jinan.www.actions;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.jinan.www.entity.User;
import com.opensymphony.xwork2.ActionSupport;

public class AuthAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private User user;
	@Override
	public String execute() throws Exception {
		if(user.getUsername().equals("admin")&&user.getPassword().equals("1")) {
			HttpSession httpSession = ServletActionContext.getRequest().getSession();
			httpSession.setAttribute("loginInfo", user.getUsername());
			return SUCCESS;
		}else {
			HttpSession httpSession = ServletActionContext.getRequest().getSession();
			httpSession.setAttribute("loginError", "账号密码有误，请重新登录");
			return "login";
		}
		
		
		
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	
	
	

}
