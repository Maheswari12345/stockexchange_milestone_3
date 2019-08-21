package com.example.stockspring.service;



import java.sql.SQLException;
import java.util.List;

import com.example.stockspring.model.Company;
import com.example.stockspring.model.Ipo_planned;

public interface Ipo_plannedService {

	public Ipo_planned insertipo(Ipo_planned ipo)throws Exception;
	
	public List<Ipo_planned> getipoList() throws SQLException, Exception;
}
