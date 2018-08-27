package com.jinan.www.interceptor;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

/**
 * 创建拦截器的方法有两种，实现Interception接口和从AbstractInterception类继承,后者常用
 * @author Administrator
 *
 */
public class TimerInterceptor extends AbstractInterceptor {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	public String intercept(ActionInvocation arg0) throws Exception {
		//记录执行action开始前的时间
		long start  = System.currentTimeMillis();
		
		//执行下一个拦截器，如果已经是最后一个拦截器，则执行目标action
		String result = arg0.invoke();
		
		//结束的时间
		long end  = System.currentTimeMillis();
		
		System.out.println("执行action使用的时间是："+(end-start)+" ms");
		return result;
	}

}
