package com.ecom.book.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.ecom.book.po.Author;
import com.ecom.book.service.AuthorService;
import com.ecom.util.SessionBeanUtil;
import com.opensymphony.xwork2.ActionSupport;

/**
 * 
 * @author FIFTH
 *		Author action
 */
public class AuthorAction extends ActionSupport{
	
	private static final long serialVersionUID = 1L;
	
	private AuthorService authorService;
	private Map<String, Object> dataMap;
	private String authorId;
	private String authorName;
	private String authorInfo;
	private String authorNation;
	private String erroMsgv= null;
	
	{
		final String beanName = "AuthorServiceImpl";
		final String viewClassName = "com.ecom.book.service.AuthorService";
		authorService = (AuthorService)SessionBeanUtil.getBean(beanName, viewClassName);
	}
	
	public String entryAuthor(){
		System.out.println("entry Author");
		return SUCCESS;
	}
	
	public String loadAuthor(){
		System.out.println("load Author");
		
		dataMap = new HashMap<String,Object>();
		List<Author> authorList = authorService.loadAuthor();
		dataMap.put("rows", authorList);
		
		return SUCCESS;
	}
	
	public String saveAuthor(){
		System.out.println("save author");
		
		Author author = new Author();
		author.setAuthorName(authorName);
		author.setAuthorInfo(authorInfo);
		author.setAuthorNation(authorNation);
		
		authorService.createAuthor(author);
		
		return SUCCESS;
	}
	
	public String editAuthor(){
		
		System.out.println("edit author");
		System.out.println("authorId:   "+authorId);
		
		Author author=new Author();
		author.setAuthorId(authorId);
		author.setAuthorName(authorName);
		author.setAuthorInfo(authorInfo);
		author.setAuthorNation(authorNation);
		
		authorService.updateAuthor(author);
		return SUCCESS;
	}
	
	public String destroyAuthor(){
		
		System.out.println("destory author");
		System.out.println("authorId: "+authorId);
		Author author = new Author();
		author.setAuthorId(authorId);
		
		authorService.deleteAuthor(authorId);
		
		return SUCCESS;
	}

	public AuthorService getAuthorService() {
		return authorService;
	}

	public void setAuthorService(AuthorService authorService) {
		this.authorService = authorService;
	}

	public Map<String, Object> getDataMap() {
		return dataMap;
	}

	public void setDataMap(Map<String, Object> dataMap) {
		this.dataMap = dataMap;
	}

	public String getAuthorId() {
		return authorId;
	}

	public void setAuthorId(String authorId) {
		this.authorId = authorId;
	}

	public String getAuthorName() {
		return authorName;
	}

	public void setAuthorName(String authorName) {
		this.authorName = authorName;
	}

	public String getAuthorInfo() {
		return authorInfo;
	}

	public void setAuthorInfo(String authorInfo) {
		this.authorInfo = authorInfo;
	}
	
	public void setAuthorNation(String authorNation)	{
		this.authorNation = authorNation;		
	}
	
	public String getAuthorNation(){
		return authorNation;
	}

	public String getErroMsgv() {
		return erroMsgv;
	}

	public void setErroMsgv(String erroMsgv) {
		this.erroMsgv = erroMsgv;
	}

}
