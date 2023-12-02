package com.skilldistillery.jpacars.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.jpacars.data.CarDAO;
import com.skilldistillery.jpacars.entities.Car;

@Controller
public class CarController {

	@Autowired
	CarDAO carDao;

	@RequestMapping(path = {"/","home.do"}, method = RequestMethod.GET)
	public ModelAndView findAllCars() {
		ModelAndView mv = new ModelAndView();

		List<Car> cars = carDao.findAll();

		mv.addObject("cars", cars);
		mv.setViewName("home");
		return mv;
	}
}
