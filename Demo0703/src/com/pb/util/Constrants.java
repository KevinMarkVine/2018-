package com.pb.util;

public class Constrants {
	public static final String driverClass=ConfigureManage.getInstance().getValueByKey("jdbc.driver_class");
	public static final String url=ConfigureManage.getInstance().getValueByKey("jdbc.connection.url");
	public static final String username=ConfigureManage.getInstance().getValueByKey("jdbc.connection.username");
	public static final String pwd=ConfigureManage.getInstance().getValueByKey("jdbc.connection.pwd");
	
}
