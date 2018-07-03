package com.pb.util;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

//��ȡ�����ļ���Ϣ
public class ConfigureManage {
	private static ConfigureManage configureManage=null;
	private static Properties properties = null;

	private ConfigureManage() {
		// ����Properties����
		properties = new Properties();
		//�õ������������ݷ������
		InputStream is = ConfigureManage.class.getClassLoader().getResourceAsStream("database.properties");
		// ���������ļ���ͨ��Io����ʽ��ȡ�����ļ�
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
	
		//����ģʽ
		ConfigureManage c1= getInstance();
		ConfigureManage c2=getInstance();
		System.out.println(c1.equals(c2));//true
	
	}

}
