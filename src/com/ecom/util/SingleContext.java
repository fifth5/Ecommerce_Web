package com.ecom.util;

import java.util.Hashtable;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;

public final class SingleContext {
	private static SingleContext instance = null;
	private static InitialContext context;

	private SingleContext() {
		Hashtable<String, String> jndiProperties = new Hashtable<String, String>();
		jndiProperties.put(Context.URL_PKG_PREFIXES, "org.jboss.ejb.client.naming");
		try {
			context = new InitialContext(jndiProperties);
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}

	public static SingleContext getInstance() {

		if (instance == null) {
			synchronized (SingleContext.class) {
				if (instance == null) {
					instance = new SingleContext();
				}
			}
		}
		return instance;
	}
	
	public InitialContext getContext(){
		return context;
	}
}
