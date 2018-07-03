package com.pb.util;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

//读取配置文件信息
public class ConfigureManage {
	private static ConfigureManage configureManage=null;
	private static Properties properties = null;

	private ConfigureManage() {
		// 创建Properties对象
		properties = new Properties();
		//得到输入流，根据反射机制
		InputStream is = ConfigureManage.class.getClassLoader().getResourceAsStream("database.properties");
		// 加载配置文件，通过Io流方式读取配置文件
		try {
			properties.load(is);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	public static ConfigureManage getInstance() {
		if(configureManage==null) {
			configureManage=new ConfigureManage();
		}
		return configureManage;
	}
	public String getValueByKey(String key) {
		return properties.getProperty(key);
	}
	public static void main(String[] args) {
		ConfigureManage cm=new ConfigureManage();
		System.out.println(cm.getValueByKey("jdbc.driver_class"));
		
		ConfigureManage m=new ConfigureManage();
		System.out.println(cm.equals(m));//false
	
		//单例模式
		ConfigureManage c1= getInstance();
		ConfigureManage c2=getInstance();
		System.out.println(c1.equals(c2));//true
	
	}

}
