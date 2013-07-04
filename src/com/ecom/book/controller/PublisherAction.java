package com.ecom.book.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.ecom.book.po.Publisher;
import com.ecom.book.service.PublisherService;
import com.ecom.util.SessionBeanUtil;
import com.opensymphony.xwork2.ActionSupport;

public class PublisherAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	
	private PublisherService publisherService;
	private Map<String,Object> dataMap;
	private String publisherId;
	private String publisherName;
	private String publisherInfo;
	private String errorMsg=null;
	
	{
		final String beanName="PublisherServiceImpl";
		final String viewClassName="com.ecom.book.service.PublisherService";
		publisherService=(PublisherService)SessionBeanUtil.getBean(beanName, viewClassName);
	}
	
	public String entryPublisher(){
		System.out.println("entry publisher");
		return SUCCESS;
	}

	public String loadPublisher(){
		System.out.println("load publisher");
		
		dataMap=new HashMap<String,Object>();
		List<Publisher> publisherList=new ArrayList<Publisher>();
		publisherList=publisherService.loadPublisher();
		dataMap.put("rows", publisherList);
		
		return SUCCESS;
	}
	
	public String savePublisher(){
		System.out.println("save publisher");
		
		Publisher publisher = new Publisher();
		publisher.setPublisherName(publisherName);
		publisher.setPublisherInfo(publisherInfo);
		
		publisherService.createPublisher(publisher);
		
		return SUCCESS;
	}
	
	public String editPublisher(){
		
		System.out.println("edit publisher");
		System.out.println("publisherId:   "+publisherId);
		
		Publisher publisher=new Publisher();
		publisher.setPublisherId(publisherId);
		publisher.setPublisherName(publisherName);
		publisher.setPublisherInfo(publisherInfo);
		
		publisherService.mergePublisher(publisher);
		return SUCCESS;
	}
	
	public String destroyPublisher(){
		
		System.out.println("destory publisher");
		System.out.println("publisherId: "+publisherId);
		Publisher publisher = new Publisher();
		publisher.setPublisherId(publisherId);
		
		publisherService.deletePublisher(publisherId);
		
		return SUCCESS;
	}

	public Map<String, Object> getDataMap() {
		return dataMap;
	}

	public void setDataMap(Map<String, Object> dataMap) {
		this.dataMap = dataMap;
	}

	public String getPublisherId() {
		return publisherId;
	}

	public void setPublisherId(String publisherId) {
		this.publisherId = publisherId;
	}

	public String getPublisherName() {
		return publisherName;
	}

	public void setPublisherName(String publisherName) {
		this.publisherName = publisherName;
	}

	public String getPublisherInfo() {
		return publisherInfo;
	}

	public void setPublisherInfo(String publisherInfo) {
		this.publisherInfo = publisherInfo;
	}

	public String getErrorMsg() {
		return errorMsg;
	}

	public void setErrorMsg(String errorMsg) {
		this.errorMsg = errorMsg;
	}
	
}
