package com.skilldistillery.jpacars.data;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.skilldistillery.jpacars.entities.Car;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;

@Service
@Transactional
public class CarDaoImpl implements CarDAO {
	
	@PersistenceContext
	private EntityManager em;

	@Override
	public Car findById(int carId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Car> findAll() {
		String jpql = "SELECT c FROM Car c";
		return em.createQuery(jpql,Car.class).getResultList();
	}

	@Override
	public Car create(Car car) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Car update(int carId, Car car) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean deleteById(int carId) {
		// TODO Auto-generated method stub
		return false;
	}

}
