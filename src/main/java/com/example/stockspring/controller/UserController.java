package com.example.stockspring.controller;
import java.sql.SQLException;

import com.example.stockspring.model.User;
public interface UserController {
	public User insertUser(User user) throws SQLException, Exception;

}
