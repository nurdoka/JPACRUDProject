package com.skilldistillery.jpacars.data;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.skilldistillery.jpacars.entities.Car;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;

@Transactional
@Service
public class CarDaoImpl implements CarDAO {
	
	@PersistenceContext
	private EntityManager em;

	@Override
	public Car findById(int carId) {
		return em.find(Car.class, carId);
	}

	@Override
	public List<Car> findAll() {
		String jpql = "SELECT c FROM Car c";
		return em.createQuery(jpql,Car.class).getResultList();
	}

	@Override
	public Car create(Car car) {
	    em.persist(car);
		return car;
	}

	@Override
	public Car update(int carId, Car car) {
		Car managed = em.find(Car.class, carId);
		  managed.setMake(car.getMake());
		  managed.setModel(car.getModel());
		  managed.setYear(car.getYear());
		  managed.setBody(car.getBody());
		  managed.setColor(car.getColor());

		  return managed;
	}

	@Override
	public boolean deleteById(int carId) {
		boolean isDeleted = false;
		Car car = em.find(Car.class, carId);

		if (car != null) {
			em.remove(car);
			isDeleted = true;
		}
		return isDeleted;
	}

}
