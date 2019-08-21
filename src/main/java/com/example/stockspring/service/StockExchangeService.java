package com.example.stockspring.service;

import java.sql.SQLException;
import java.util.List;


import com.example.stockspring.model.StockExchange;

public interface StockExchangeService {
	public StockExchange insertStock(StockExchange stock);
	
		public List<StockExchange> getStockList() throws SQLException, Exception;

}
