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
	
	
	

}
