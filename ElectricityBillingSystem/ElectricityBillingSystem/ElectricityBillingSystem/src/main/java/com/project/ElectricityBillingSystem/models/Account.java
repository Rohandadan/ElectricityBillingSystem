package com.project.ElectricityBillingSystem.models;

import java.util.Random;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.Pattern;
import jakarta.validation.constraints.Size;

@Entity
public class Account {
	@Id
	@Size(min=7, message="Meter No should be minimum of 7 characters.")
    @Column(name = "meterno")
	private String meterno;
	
	 @Size(min=1, message="Full Name is required.")
	 @Column(name = "name", nullable = false)
	 private String name;

    @Override
	public String toString() {
		return "Account [meterno=" + meterno + ", name=" + name + ", sectorno=" + sectorno + ", phoneno=" + phoneno
				+ ", due=" + due + ", reading=" + reading + ", oreading=" + oreading +  "]";
	}
	
    @Min(value=1, message="Sector No should be positive.")
    @Column(name = "sectorno", nullable = false)
	private int sectorno;
    
    @Pattern(regexp = "[6-9]{1}[0-9]{9}", message="Phone Number should be valid with 10 digits.")
    @Column(name = "phoneno", unique = true, nullable = false)
	private String phoneno;
    
    
	private int due;
	
	private int reading;
	private int oreading;
//	private String date;
	
	
	public String generator() {
		Random r = new Random();
		StringBuilder sb = new StringBuilder(7);
		for (int i = 0; i < 7; i++) {
			sb.append(r.nextInt(10));
		}
		return sb.toString();
	}
	
	public String getMeterno() {
		return meterno;
	}
	public void setMeterno(String metern) {
		this.meterno = metern;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getSectorno() {
		return sectorno;
	}
	public void setSectorno(int Sectorno) {
		this.sectorno = Sectorno;
	}
	public String getPhoneno() {
		return phoneno;
	}
	public void setPhoneno(String phoneno) {
		this.phoneno = phoneno;
	}
	public int getDue() {
		return due;
	}
	public void setDue(int due) {
		this.due = due;
	}
	public int getReading() {
		return reading;
	}
	public void setReading(int reading) {
		this.reading = reading;
	}
	public Account(String metern,String name,int sectorno,String phoneno, int due, int reading, int oreading) {
		this.meterno=metern;
		this.name=name;
		this.sectorno=sectorno;
		this.phoneno=phoneno;
		this.due=due;
		this.reading=reading;
		this.oreading=oreading;
	}
	
	public Account() {
		
	}
	public int getOreading() {
		return oreading;
	} 
	public void setOreading(int oreading) {
		this.oreading = oreading;
	}
//	public String getDate() {
//		return date;
//	}
//	public void setDate(String date) {
//		this.date = date;
//	}
}
