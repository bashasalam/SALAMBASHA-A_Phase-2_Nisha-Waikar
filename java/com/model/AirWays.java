package com.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="source_destiny")
public class AirWays {
		
		@Id
		@GeneratedValue(strategy = GenerationType.SEQUENCE)
		private int Id;
		private String source;
		private String destination;
		
		
		
		
		public AirWays() {
			super();
		}
		
		
	
		public AirWays(String source, String destination) {
			super();
			this.source = source;
			this.destination = destination;
		}



		public int getId() {
			return Id;
		}
		public void setId(int id) {
			Id = id;
		}
		public String getSource() {
			return source;
		}
		public void setSource(String source) {
			source = source;
		}
		public String getDestination() {
			return destination;
		}
		public void setDestination(String destination) {
			destination = destination;
		}
		@Override
		public String toString() {
			return "AirWays [Id=" + Id + ", Source=" + source + ", Destination=" + destination + "]";
		}
		
	

}

