package com.jinan.www.actions;

import com.opensymphony.xwork2.ActionSupport;

public class TestValidation1Action extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String username;
	private Integer password1;
	private Integer password2;
	@Override
	public String execute() throws Exception {
		return SUCCESS;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public Integer getPassword1() {
		return password1;
	}
	public void setPassword1(Integer password1) {
		this.password1 = password1;
	}
	public Integer getPassword2() {
		return password2;
	}
	public void setPassword2(Integer password2) {
		this.password2 = password2;
	}
	/*
	 *下面这个方法是自定义校验器
	 *
	 *响应login处理逻辑的自定义校验方法命名为：validateLogin()
	 *响应regist处理逻辑的自定义校验方法命名为：validateRegist()
	 */
	public void validate(){
		if(username.isEmpty()){
			addFieldError("name", "自定义校验器，用户名不能为空");
		}
		if(!password1.equals(password2)){
			addFieldError("pass1","自定义校验器，两次输入的密码不一致");
		}
	}
	
	

}
