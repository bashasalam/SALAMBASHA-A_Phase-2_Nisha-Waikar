package com.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity

@Table(name = "flight_list")
public class FlightList {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE)
	@Column(name = "flight_id")
	private Integer flightId;
	@Column(name = "flight_name")
	private String flightName;
	private String source;
	private String destination;
	private String date;
	private String time;
	@Column(name = "ticket_price")
	private double ticketPrice;
	
	
	public FlightList() {
		super();
	}
	public FlightList( String flightName, String source, String destination, String date, String time,
			double ticketPrice) {
		super();
	
		this.flightName = flightName;
		this.source = source;
		this.destination = destination;
		this.date = date;
		this.time = time;
		this.ticketPrice = ticketPrice;
	}
	public Integer getFlightId() {
		return flightId;
	}
	public void setFlightId(Integer flightId) {
		this.flightId = flightId;
	}
	public String getFlightName() {
		return flightName;
	}
	public void setFlightName(String flightName) {
		this.flightName = flightName;
	}
	public String getSource() {
		return source;
	}
	public void setSource(String source) {
		this.source = source;
	}
	public String getDestination() {
		return destination;
	}
	public void setDestination(String destination) {
		this.destination = destination;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public double getTicketPrice() {
		return ticketPrice;
	}
	public void setTicketPrice(double ticketPrice) {
		this.ticketPrice = ticketPrice;
	}
	@Override
	public String toString() {
		return "FlightList [flightId=" + flightId + ", flightName=" + flightName + ", source=" + source
				+ ", destination=" + destination + ", date=" + date + ", time=" + time + ", ticketPrice=" + ticketPrice
				+ "]";
	}
	
	
	
	
}
