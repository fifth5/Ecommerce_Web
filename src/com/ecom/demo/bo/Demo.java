package com.ecom.demo.bo;

import java.io.Serializable;
import java.util.Date;

@SuppressWarnings("serial")
public class Demo implements Serializable{

	private int demoId;
	private String name;
	private String description;
	private Date date;
	
	public int getDemoId() {
		return demoId;
	}
	public void setDemoId(int demoId) {
		this.demoId = demoId;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	
}
