package com.example.stockspring.controller;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.example.stockspring.model.StockExchange;
import com.example.stockspring.model.User;
import com.example.stockspring.service.StockExchangeService;
@Controller
public class StockExchangeControllerImpl implements StockExchangeController{
	@Autowired
	StockExchangeService stockservice;

	@Override
	public StockExchange insertStock(StockExchange company) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public StockExchange updateStock(StockExchange company) {
		// TODO Auto-generated method stub
		return null;
	}

	
	@ModelAttribute("stockExchangeName")
	public List<String> setValues(){
		List<String> stockname=new ArrayList<String>();
		stockname.add("NSE");
		stockname.add("BSE");
	
		return stockname;
	}
	@RequestMapping(path="/addStockExchange",method=RequestMethod.GET)
	public String addStock(ModelMap  model)throws SQLException
	{
		StockExchange stock=new StockExchange();
		model.addAttribute("stockList",stock);
		return "addstockex";
	}
	@RequestMapping(path="/addStockExchange", method= RequestMethod.POST)
	public String addStock(StockExchange stock) throws SQLException
	{   System.out.println(stock);
		try {
			stockservice.insertStock(stock);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "redirect:/stockList";
		
	}
	@RequestMapping(path="/stockList")
	public ModelAndView getStockList() throws Exception {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("stocklist");
		mv.addObject("stockList", stockservice.getStockList());
		return mv;
	}
	

}
