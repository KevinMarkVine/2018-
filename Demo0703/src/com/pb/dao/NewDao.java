package com.pb.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;

import com.pb.util.ConfigureManage;
import com.pb.util.Constrants;

public class NewDao {
	public void getNewsList() {
		Connection conn=null;
		Statement stmt=null;
		ResultSet rs=null;
		try {
			//1、 加载驱动
			Class.forName(Constrants.driverClass);
			//2、 得到连接对象
			 conn = DriverManager.getConnection(Constrants.url, Constrants.username, Constrants.pwd);
			//3、创建Statement对象
			 stmt=conn.createStatement();
			String sql="SELECT * FROM news_detail;";
			//4、执行SQL语句，并返回结果集
			 rs=stmt.executeQuery(sql);
			while(rs.next()) {
				int id=rs.getInt("id");
				Timestamp createDate=rs.getTimestamp("createDate");
				System.out.println(id);
				System.out.println(createDate);
				System.out.println(rs.getDate("createDate"));
			}
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}finally {
			//5、释放资源
			try {
				rs.close();
				stmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
public static void main(String[] args) {
	NewDao newDao=new NewDao();
	newDao.getNewsList();
}
}
