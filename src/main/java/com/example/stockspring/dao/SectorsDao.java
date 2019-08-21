package com.example.stockspring.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import com.example.stockspring.model.*;

public interface SectorsDao extends JpaRepository<Sectors, Integer>{

	public Sectors findBysectorName(String sectorName);

}
