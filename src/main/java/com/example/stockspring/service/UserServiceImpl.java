package com.example.stockspring.service;
import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.stockspring.dao.*;
import com.example.stockspring.model.*;
@Service
public class UserServiceImpl implements UserService{
	
	@Autowired
	private UserDao userDao;


	public int insertUser(User user) throws Exception {
		// TODO Auto-generated method stub
		userDao.insertUser(user);
		return 0;
		
	}


	@Override
	public int validateUser(User user) throws SQLException, Exception {
		userDao.validateUser(user);
		return 0;
	}

}
