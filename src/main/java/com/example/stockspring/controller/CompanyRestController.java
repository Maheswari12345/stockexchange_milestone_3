package com.example.stockspring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.example.stockspring.dao.CompanyDao;
import com.example.stockspring.dao.IpoDao;
import com.example.stockspring.dao.SectorsDao;
import com.example.stockspring.model.*;


@RestController
public class CompanyRestController {


@Autowired
CompanyDao companydao;
@Autowired
SectorsDao sectorsDao;
@Autowired
IpoDao ipodao;


@GetMapping("/sector/{name}")
public List<Company> getCompanyList(@PathVariable("name") String name)
{
	Sectors sectors=sectorsDao.findBysectorName(name);
	System.out.print(sectors.getId());
	return  companydao.findBysectorId(sectors.getId());
}

@GetMapping("/company/{name}")
public List<Ipo_planned> getIpoList1(@PathVariable("name") String name)
{
	Company companies=companydao.findBycompanyName(name);
	System.out.println(companies.getCompanyCode());
	return ipodao.findBycompanyCode(companies.getCompanyCode());
}
@GetMapping("/company/pattern/{name}")
public List<Company> getCompanyNamematching(@PathVariable("name") String name)
{
	return (List<Company>) companydao.findBycompanyName1(name);
}

}
