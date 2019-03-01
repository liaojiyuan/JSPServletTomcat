package com.eshore;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.ParseException;

public class PreparedStatementBatch {
	
    public static void main(String[] args){
    	String sql = "insert into Person(name,age,sex,birthday,description) values(?,?,?,?,?)";
        Connection con = null;
        PreparedStatement prest = null;
    	try {
			Class.forName("com.mysql.jdbc.Driver");          //注册数据库
			con = DriverManager.getConnection(               //获取数据库连接
					"jdbc:mysql://localhost:3306/testWeb","root","admin");
			prest = con.prepareStatement(sql);               //获取PreparedStatement,并且预编译SQL语句
			for(int i=0;i<=10;i++){
				prest.setString(1, "李四"+i);                //设定第1个参数
				prest.setInt(2, 30);                         //设定第2个参数
				prest.setString(3, "男");                    //设定第3个参数
				prest.setDate(4,                             //设定第4个参数
						new Date(System.currentTimeMillis()));
				prest.setString(5, "PreparedStatement 批量插入"); //设定第5个参数
				prest.addBatch();                            //添加SQL语句
			}
			int[] result = prest.executeBatch();             //执行批量插入，返回结果集
		 } catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			//记住关闭连接
			try {
				prest.close();
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} 
    }
}
