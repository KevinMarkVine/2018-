package com.pb.news;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class NewDao {
	public void getNewsList() {

		try {
			// ��������
			Class.forName("com.mysql.jdbc.Driver");
			// �õ����Ӷ���
			Connection con = DriverManager.getConnection("jdbc:mysql:///news", "root", "root");
			System.out.println("���ݿ����ӳɹ�");
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}
public static void main(String[] args) {
	NewDao newDao=new NewDao();
	newDao.getNewsList();
}
}
