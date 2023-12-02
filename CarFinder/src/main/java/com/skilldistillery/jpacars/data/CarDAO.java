package com.skilldistillery.jpacars.data;

import java.util.List;

import com.skilldistillery.jpacars.entities.Car;

public interface CarDAO {
	Car findById(int carId);
	List<Car> findAll();
	Car create(Car car);
	Car update(int carId, Car car);
	boolean deleteById(int carId);
}
