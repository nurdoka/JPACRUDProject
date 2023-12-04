package com.skilldistillery.jpacars.entities;

import java.util.Objects;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Car {
	@Id 
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String make;
	private String model;
	private String year;
	private String color;
	private String body;
	
	public Car() {
	}

	public Car(String make, String model, String year, String color, String body) {
		super();
		this.make = make;
		this.model = model;
		this.year = year;
		this.color = color;
		this.body = body;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getMake() {
		return make;
	}

	public void setMake(String make) {
		this.make = make;
	}

	public String getModel() {
		return model;
	}

	public void setModel(String model) {
		this.model = model;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public String getBody() {
		return body;
	}

	public void setBody(String body) {
		this.body = body;
	}

	@Override
	public String toString() {
		return "Car [id=" + id + ", make=" + make + ", model=" + model + ", year=" + year + ", color=" + color
				+ ", body=" + body + "]";
	}

	@Override
	public int hashCode() {
		return Objects.hash(id);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Car other = (Car) obj;
		return id == other.id;
	}
	
	
}
