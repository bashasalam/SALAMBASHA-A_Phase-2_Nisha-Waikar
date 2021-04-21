package com.model;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.Metadata;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;

public class ModelMain {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		  StandardServiceRegistry ssr = new StandardServiceRegistryBuilder().configure("hibernate.cfg.xml").build(); 
		     Metadata meta = new MetadataSources(ssr).getMetadataBuilder().build();  
	         SessionFactory factory = meta.getSessionFactoryBuilder().build(); 
	        
	   	  StandardServiceRegistry ssr1 = new StandardServiceRegistryBuilder().configure("hibernate.cfg.xml").build(); 
		     Metadata meta1 = new MetadataSources(ssr1).getMetadataBuilder().build();  
	        SessionFactory factory1 = meta1.getSessionFactoryBuilder().build(); 
	        
	   	    StandardServiceRegistry ssr2 = new StandardServiceRegistryBuilder().configure("hibernate.cfg.xml").build(); 
		    Metadata meta2 = new MetadataSources(ssr2).getMetadataBuilder().build();  
		    SessionFactory factory2 = meta2.getSessionFactoryBuilder().build(); 



	        
	        Admin admin = new Admin("Admin","Admin123");
	        FlightList fly1 = new FlightList("IndiGO","India","Malasia","21/4/2021","6.30pm",12500);
	        FlightList fly2 = new FlightList("AirIndia","India","UK","25/4/2021","3.30pm",25500);
	        FlightList fly3 = new FlightList("SpiceJet","Malasia","India","20/4/2021","6.30am",13500);
	        FlightList fly4 = new FlightList("GoAir","UK","India","26/4/2021","8.30pm",21500);
	        FlightList fly5 = new FlightList("AirAsiaIndia","India","Singapore","2/5/2021","6.30pm",15500);
	        FlightList fly6 = new FlightList("Qatar Airways","India","Qatar","5/5/2021","11.30am",20500);
	        FlightList fly7 = new FlightList("Vistara","India","USA","21/4/2021","7.30pm",42500);
	        FlightList fly8 = new FlightList("Trujet","India","Russiya","25/4/2021","10.30pm",12500);
	        FlightList fly9 = new FlightList("Alliance Air","India","Swizerland","28/4/2021","8.30am",62500);
	        FlightList fly10= new FlightList("Araba Air","Arabia","India","28/4/2021","8.30am",42500);
	  
	        AirWays airway1=new AirWays("INDIA","UK");
	        AirWays airway2=new AirWays("INDIA","USA");
	        AirWays airway3=new AirWays("India","Malasia");
	        AirWays airway4=new AirWays("India","Singapore");
	        AirWays airway5=new AirWays("India","Rusia");
	        AirWays airway6=new AirWays("India","Arabia");
	        AirWays airway7=new AirWays("India","Qatar");
	        
	        try{
	        Session session  = factory.openSession();
	        session.save(admin);
	   
	       	
	        Session flightsession  = factory1.openSession();
	        flightsession.save(fly1);
	        flightsession.save(fly2);
	        flightsession.save(fly3);
	        flightsession.save(fly4);
	        flightsession.save(fly5);
	        flightsession.save(fly6);
	        flightsession.save(fly7);
	        flightsession.save(fly8);
	        flightsession.save(fly9);
	        flightsession.save(fly10);
	 
	      	
	      	Session airsession = factory2.openSession();
	      	airsession.save(airway1);
	      	airsession.save(airway2);
	      	airsession.save(airway3);
	      	airsession.save(airway4);
	      	airsession.save(airway5);
	      	airsession.save(airway6);
	      	airsession.save(airway7);
	      	
	        Transaction transaction = session.beginTransaction();
	        Transaction flightTransaction = flightsession.beginTransaction();
	        Transaction airsessionTransaction = airsession.beginTransaction();
	        transaction.commit();
	        flightTransaction.commit();
	        airsessionTransaction.commit();
	        	        
	       	session.close();
	       	        
	      	flightsession.close();
	      	   	
	      	airsession.close();
	           	
	      	
	        }catch(Exception e)
	        {
	        	e.getStackTrace();
	        }
	        
	        
	        


	}

}
