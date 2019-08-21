package com.example.stockspring.controller;
import org.springframework.web.servlet.ModelAndView;

import com.example.stockspring.model.*;

public interface Ipo_plannedController  {
  public Ipo_planned insertipo(Ipo_planned ipo)throws Exception;
  public ModelAndView getipoList() throws Exception;
}
