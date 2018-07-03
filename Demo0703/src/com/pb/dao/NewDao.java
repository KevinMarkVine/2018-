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
			//1�� ��������
			Class.forName(Constrants.driverClass);
			//2�� �õ����Ӷ���
			 conn = DriverManager.getConnection(Constrants.url, Constrants.username, Constrants.pwd);
			//3������Statement����
			 stmt=conn.createStatement();
			String sql="SELECT * FROM news_detail;";
			//4��ִ��SQL��䣬�����ؽ����
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
			//5���ͷ���Դ
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
