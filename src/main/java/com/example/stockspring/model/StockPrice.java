package com.example.stockspring.model;
import java.sql.Time;
import java.util.*;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import java.sql.Date;

@Entity
@Table(name="stock_price")
public class StockPrice {
	
	    @Id
	    @Column(name="stock_code")
	    private int stockCode;
	    @Column(name="company_code")
		private int companyCode;
	    @Column(name="stock_exchange")
		private int stockExchange;
	    @Column(name="current_price")
		private int currentPrice;
	    @Column(name="from_date")
	    private Date fromDate;
	    @Column(name="to_date")
		private Date toDate;
		public int getCompanyCode() {
			return companyCode;
		}
		public void setCompanyCode(int companyCode) {
			this.companyCode = companyCode;
		}
		public int getStockExchange() {
			return stockExchange;
		}
		public void setStockExchange(int stockExchange) {
			this.stockExchange = stockExchange;
		}
		public int getCurrentPrice() {
			return currentPrice;
		}
		public void setCurrentPrice(int currentPrice) {
			this.currentPrice = currentPrice;
		}
		public int getStockCode() {
			return stockCode;
		}
		public void setStockCode(int stockCode) {
			this.stockCode = stockCode;
		}
		public Date getFromDate() {
			return fromDate;
		}
		public void setFromDate(Date fromDate) {
			this.fromDate = fromDate;
		}
		public Date getToDate() {
			return toDate;
		}
		public void setToDate(Date toDate) {
			this.toDate = toDate;
		}
	
		
		

	}


