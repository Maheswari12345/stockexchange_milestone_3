package com.example.stockspring.dao;

import java.sql.SQLException;
import java.util.List;

import com.example.stockspring.model.Company;


import java.sql.SQLException;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.example.stockspring.model.Company;

public interface CompanyDao extends JpaRepository<Company, Integer> {
	public List<Company> findBysectorId(int sectorId);
	public Company findBycompanyName(String companyName);
	@Query("Select c From Company c where c.companyName LIKE  %:name% ")
	Company findBycompanyName1(@Param("name") String name);
	  
}