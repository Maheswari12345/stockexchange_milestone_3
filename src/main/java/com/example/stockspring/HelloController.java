package com.example.stockspring;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HelloController {

	@RequestMapping(path="/hello")
	public String sayHello(){
		System.out.println("hello");
		return "helloWorld";
	}
	
	
	
	
	@RequestMapping(path="/companylist")
	public ModelAndView getCompanyList(){
		System.out.println("inside abc");
		ModelAndView mv=new ModelAndView(); 
		
		/*List<Company> companyList=new ArrayList<Company>();
		Company ramesh=new Company();
		ramesh.setCompanyCode(101);
		ramesh.setCompanyName("zilker");

	    Company suresh=new Company();
		suresh.setCompanyCode(102);
		suresh.setCompanyName("caterpillar");

		companyList.add(ramesh);
		companyList.add(suresh);
		mv.addObject("list",companyList);*/
		mv.setViewName("companyList");
		
		return mv;
	}
	
	
	
	
	
	
}
