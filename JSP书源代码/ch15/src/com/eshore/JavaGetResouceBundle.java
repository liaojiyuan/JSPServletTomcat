package com.eshore;

import java.text.MessageFormat;
import java.util.Date;
import java.util.MissingResourceException;
import java.util.ResourceBundle;

public class JavaGetResouceBundle {
	// 资源名称
	private static final String BUNDLE_NAME = "welcome";
	// 资源绑定
	private static final ResourceBundle RESOURCE_BUNDLE = ResourceBundle.getBundle(BUNDLE_NAME);
	// 返回不带参数的资源
	public static String getMessage(String key) {
		
		try {
			return RESOURCE_BUNDLE.getString(key);
		} catch (MissingResourceException e) {
			return key;
		}
	}
	// 返回带任意个参数的资源
	public static String getMessage(String key, Object... params) {
		
		try {
			String value = RESOURCE_BUNDLE.getString(key);
			return MessageFormat.format(value, params);
		} catch (MissingResourceException e) {
			return key;
		}
	}

	public static void main(String args[]) {  
		System.out.println(getMessage("welcomeinfo"));
	}
}
