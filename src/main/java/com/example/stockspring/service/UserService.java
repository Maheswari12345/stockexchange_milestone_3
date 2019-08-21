package com.example.stockspring.service;
import com.example.stockspring.model.*;

import java.sql.SQLException;

import com.example.stockspring.dao.*;

public interface UserService {
	public int insertUser(User user)throws SQLException, Exception ;
	public int validateUser(User user)throws SQLException, Exception;
}
