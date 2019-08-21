package com.example.stockspring.controller;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.example.stockspring.model.Ipo_planned;
import com.example.stockspring.service.Ipo_plannedService;

@Controller
public class Ipo_plannedControllerImpl implements Ipo_plannedController {
	
	@Autowired
	Ipo_plannedService iposervice;

	@Override
	public Ipo_planned insertipo(Ipo_planned ipo) throws Exception {
		
		return null;
	}

	@RequestMapping(path="/addIpo",method=RequestMethod.GET)
	public String addIpo(ModelMap model)throws SQLException
	{
		Ipo_planned ipo=new Ipo_planned();
		model.addAttribute("ipoList",ipo);
		return "addipo";
		
	}
	@RequestMapping(path="/addIpo",method=RequestMethod.POST)
	public String addIpo(Ipo_planned ipo) throws SQLException
	{
		System.out.println(ipo);
		try {
			iposervice.insertipo(ipo);
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return "redirect:/ipoList";
	}
	@RequestMapping(path="/ipoList")
	public ModelAndView getipoList() throws Exception {
		// TODO Auto-generated method stub
		ModelAndView mv=new ModelAndView();
		mv.setViewName("ipolist");
		mv.addObject("ipoList",iposervice.getipoList());
		return mv;
	}
	
	

}


