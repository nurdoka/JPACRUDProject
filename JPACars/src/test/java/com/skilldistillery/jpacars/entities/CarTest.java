package com.skilldistillery.jpacars.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

class CarTest {
	private static EntityManagerFactory emf;
	private EntityManager em;
	private Car car;
	
	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("JPACars");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		car = em.find(Car.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		car = null;
		em.close();
	}

	@Test
	void test_Car_basic_mapping() {
		assertNotNull(car);
		assertEquals("Toyota",car.getMake());
	}

}
