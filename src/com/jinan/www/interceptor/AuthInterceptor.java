package com.jinan.www.interceptor;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class AuthInterceptor extends AbstractInterceptor {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	public String intercept(ActionInvocation arg0) throws Exception {

		HttpSession httpSession  = ServletActionContext.getRequest().getSession();
		Object object=httpSession.getAttribute("loginInfo");
		if(object!=null) {
			String result=arg0.invoke();
			return result;
		}else {
			return "login";
		}
	}

}
