package com.ecom.demo.service;

import java.util.List;

import com.ecom.demo.bo.Demo;

public interface DemoService {

	public void insertDemo(Demo demo);
	
	public List<Demo> getDemoList();
}
