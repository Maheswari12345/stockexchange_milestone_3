package com.example.stockspring.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.stockspring.dao.IpoDao;
import com.example.stockspring.model.Ipo_planned;

@Service
public class Ipo_plannedServiceImpl implements Ipo_plannedService{
	@Autowired
	IpoDao ipodao;

	@Override
	public Ipo_planned insertipo(Ipo_planned ipo) throws Exception {
		ipodao.save(ipo);
		
		return null;
	}

	@Override
	public List<Ipo_planned> getipoList() throws SQLException, Exception {
		
		return ipodao.findAll();
	}

}
