package com.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="airlines")
public class Airlines {
	@Id
	
	private int flight_id;
	private String flight_name;
	
	public Airlines() {
		super();
	}
	
	public Airlines( int flight_id,String flight_name) {
		super();
		this.flight_name = flight_name;
		this.flight_id = flight_id;
	}

	public int getFlight_id() {
		return flight_id;
	}

	public void setFlight_id(int flight_id) {
		this.flight_id = flight_id;
	}

	public String getFlight_name() {
		return flight_name;
	}

	public void setFlight_name(String flight_name) {
		this.flight_name = flight_name;
	}

	@Override
	public String toString() {
		return "Airlines [flight_id=" + flight_id + ", flight_name=" + flight_name + ", getClass()=" + getClass()
				+ ", hashCode()=" + hashCode() + ", toString()=" + super.toString() + "]";
	}
	
	
	

}
