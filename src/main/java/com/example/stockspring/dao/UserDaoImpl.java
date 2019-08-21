package com.example.stockspring.dao;
import java.sql.ResultSet;


import java.awt.List;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import org.springframework.stereotype.Repository;

import com.example.stockspring.model.User;
@Repository
public class UserDaoImpl implements UserDao{
	public static Connection connect() throws Exception {
		Connection conn = null;
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/stockproject", "root", "root");

		return conn;

	}

	
	public int insertUser(User user) throws Exception {
		Connection conn = connect();
		System.out.println(user);
		String insertQuery = "insert into user(id,username,password,usertype,email,mobilenumber)values(?,?,?,?,?,?)";
	       
		PreparedStatement pstmt = conn.prepareStatement(insertQuery);
		pstmt.setInt(1, user.getId());
		pstmt.setString(2, user.getUsername());
		pstmt.setString(3, user.getPassword());
		pstmt.setString(4, user.getUserType());
		pstmt.setString(5, user.getEmail());
		pstmt.setInt(6, user.getMobile());
		
		int insertstatus = 0;
		insertstatus = pstmt.executeUpdate();
		System.out.println(insertstatus);
		return insertstatus;
	}


	@Override
	public int validateUser(User user) throws Exception {
		Connection conn = connect();
		System.out.println(user);
		//String password=(String)request.getParameter("password");
		

	    
		
		return 0;
	}
	

}
