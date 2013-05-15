package com.ecom.demo.controller;

import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.beanutils.BeanUtils;

import com.ecom.demo.bo.Demo;
import com.ecom.demo.service.DemoService;
import com.ecom.demo.vo.DemoForm;
import com.ecom.util.SessionBeanUtil;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class DemoAction extends ActionSupport {
	
	private List<DemoForm> demoList=new ArrayList<DemoForm>();
	private DemoForm demoParam = null;
	
	


	private DemoService service=null;
	
	{
		final String beanName="DemoServiceImpl";
		final String viewClassName=DemoService.class.getName();
		service=(DemoService)SessionBeanUtil.getBean(beanName, viewClassName);
	}
	
	public String showDemo() throws IllegalAccessException, InstantiationException, InvocationTargetException, NoSuchMethodException{
		List<Demo> demos=null; 
		demos=service.getDemoList();
		for(Demo demo:demos){
			DemoForm form=new DemoForm();
			BeanUtils.copyProperties(form, demo);
			demoList.add(form);
		}
		
		return SUCCESS;
	}

	public String insertDemo() throws  IllegalAccessException, InstantiationException, InvocationTargetException, NoSuchMethodException{
		System.out.println("aaaaa");
		Demo demo = new Demo();
		System.out.println("bbbb");
		demo.setDemoId(demoParam.getDemoId());
		demo.setDescription(demoParam.getDescription());
		demo.setName(demoParam.getName());
		System.out.println("ssss");
		java.util.Date now = new 	java.util.Date();
		demo.setDate(now);
		
		service.insertDemo(demo);
		
		return SUCCESS;
	}

	public List<DemoForm> getDemoList() {
		return demoList;
	}


	public void setDemoList(List<DemoForm> demoList) {
		this.demoList = demoList;
	}
	
	public DemoForm getDemoParam() {
		return demoParam;
	}

	public void setDemoParam(DemoForm demoParam) {
		this.demoParam = demoParam;
	}
	
}
