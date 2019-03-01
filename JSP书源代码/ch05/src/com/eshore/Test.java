package com.eshore;

public class Test {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		boolean flag = false;
		String email = "swarding99@sina.com";
		if(email!=null&&!"".equals(email)){
			flag = email.matches("^[\\w-]+(\\.[\\w-]+)*@[\\w-]+(\\.[\\w-]+)+$");
		}
		System.out.println(flag);
	}

}
