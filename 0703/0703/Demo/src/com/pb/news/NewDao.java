package com.pb.news;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class NewDao {
	public void getNewsList() {

		try {
			// 加载驱动
			Class.forName("com.mysql.jdbc.Driver");
			// 得到连接对象
			Connection con = DriverManager.getConnection("jdbc:mysql:///news", "root", "root");
			System.out.println("数据库连接成功");
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}
public static void main(String[] args) {
	NewDao newDao=new NewDao();
	newDao.getNewsList();
}
}
