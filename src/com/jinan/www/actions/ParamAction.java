package com.jinan.www.actions;

import com.jinan.www.entity.Student;
import com.opensymphony.xwork2.ModelDriven;

public class ParamAction implements ModelDriven<Object>{

	//实例化对象
	private Student student=new Student();
	//重写接口的方法
	@Override
	public Student getModel() {
		// TODO Auto-generated method stub
		return student;
	}
	//要有execute方法
	public String execute() {
		
		return "success";
	}

}
