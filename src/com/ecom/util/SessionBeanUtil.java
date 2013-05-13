package com.ecom.util;

import javax.naming.InitialContext;
import javax.naming.NamingException;

public class SessionBeanUtil {
	
	private static Object obj;
	private static InitialContext context;
	
	private static final String appName="";
	private static final String moduleName="Ecommerce_App";
	private static final String distinctName="";
	
	public static Object getBean(String beanName,String viewClassName){
		context=SingleContext.getInstance().getContext();
		
		try {
			obj=context.lookup("ejb:" + appName + "/" + moduleName + "/" + distinctName + "/"+beanName+"!"+viewClassName);
		} catch (NamingException e) {
			e.printStackTrace();
		}
		return obj;
	}
	
	public static Object getStatefuleBean(String beanName,String viewClassName){
		context=SingleContext.getInstance().getContext();
		
		try {
			obj=context.lookup("ejb:" + appName + "/" + moduleName + "/" + distinctName + "/"+beanName+"!"+viewClassName+"?stateful");
		} catch (NamingException e) {
			e.printStackTrace();
		}
		return obj;
	}

}
