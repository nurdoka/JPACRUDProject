package com.skilldistillery.jpacars.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.jpacars.data.CarDAO;
import com.skilldistillery.jpacars.entities.Car;

@Controller
public class CarController {

	@Autowired
	CarDAO carDao;

	@GetMapping("/homeMapping")
	@RequestMapping(path = {"/","home.do"}, method = RequestMethod.GET)
	public ModelAndView findAllCars() {
		ModelAndView mv = new ModelAndView();

		List<Car> cars = carDao.findAll();

		mv.addObject("cars", cars);
		mv.setViewName("home");
		return mv;
	}
	
	@RequestMapping(path = "getCar.do", method = RequestMethod.GET)
	public ModelAndView findById(@RequestParam("carId") int carId) {
		ModelAndView mv = new ModelAndView();

		Car car = carDao.findById(carId);

		mv.addObject("car", car);
		mv.setViewName("show");
		return mv;
	}
	
	@RequestMapping(path = "addCar.do", method = RequestMethod.GET)
	public ModelAndView addCar(@RequestParam("make") String make,
							   @RequestParam("model") String model,
							   @RequestParam("year") String year,
							   @RequestParam("color") String color,
							   @RequestParam("body") String body) {
		ModelAndView mv = new ModelAndView();

		Car car = new Car(make,model,year,color,body);

		mv.addObject("car", carDao.create(car));
		mv.setViewName("show");
		return mv;
	}
	
	@RequestMapping(path = "updateCar.do", method = RequestMethod.GET)
	public ModelAndView updateCar(@RequestParam("carId") int id,
								@RequestParam("make") String make,
							   @RequestParam("model") String model,
							   @RequestParam("year") String year,
							   @RequestParam("color") String color,
							   @RequestParam("body") String body) {
		ModelAndView mv = new ModelAndView();

		Car car = new Car(make,model,year,color,body);
		car.setId(id);
		
		mv.addObject("car", carDao.update(id,car));
		mv.setViewName("show");
		return mv;
	}
	
	@RequestMapping(path = "addCarForm.do", method = RequestMethod.GET)
	public ModelAndView carForm() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("addcar");
		return mv;
	}
	
	@RequestMapping(path = "updateCarForm.do", method = RequestMethod.GET)
	public ModelAndView updateCarForm(@RequestParam("carId") int id) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("car", carDao.findById(id));
		mv.setViewName("updatecar");
		return mv;
	}
	
	@RequestMapping(path = "deleteCar.do", method = RequestMethod.GET)
	public ModelAndView deleteCar(@RequestParam("carId") int carId) {
		ModelAndView mv = new ModelAndView();
		carDao.deleteById(carId);
		mv.setViewName("redirect:home.do");
		return mv;
	}
	

}
