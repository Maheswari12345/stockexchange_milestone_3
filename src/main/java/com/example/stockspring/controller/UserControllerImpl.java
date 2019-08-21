package com.example.stockspring.controller;
import com.example.stockspring.model.*;
import com.example.stockspring.service.*;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.example.stockspring.model.User;
import com.example.stockspring.service.UserService;

@Controller
public class UserControllerImpl implements UserController{
	@Autowired
	private UserService userService;


	@Override
	public User insertUser(User user) throws Exception {
		userService.insertUser(user);
		return null;
	}
	@ModelAttribute("userType")
	public List<String> setValues(){
		List<String> userType=new ArrayList<String>();
		userType.add("admin");
		userType.add("user");
	
		return userType;
	}
	
	@RequestMapping(path="/addUser", method= RequestMethod.POST)
	public String addUser(User user) throws SQLException
	{   System.out.println(user);
		try {
			userService.insertUser(user);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "login";
		
	}
	/*@RequestMapping(path="/validateUsers",method=RequestMethod.GET)
	public String ValidateUsers(ModelMap model)throws SQLException
	
	{
		User user=new User();
		model.addAttribute("u",user);
		return "login";
	}*/
	@RequestMapping(path="/addUser",method=RequestMethod.GET)
	public String addUserGet(ModelMap  model)throws SQLException
	{
		User user=new User();
		model.addAttribute("user",user);
		return "registeruser";
	}
	
	/*@RequestMapping(path="/validateUser", method= RequestMethod.POST)
	public String validateUser(User user)throws SQLException
	{
		
			return "loginaction";
		
		
	}*/
	
	
	

}
