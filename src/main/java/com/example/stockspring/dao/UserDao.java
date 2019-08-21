package com.example.stockspring.dao;
import com.example.stockspring.model.*;

public interface UserDao {
	public int insertUser(User user)throws Exception;
	public int validateUser(User user)throws Exception;

}
