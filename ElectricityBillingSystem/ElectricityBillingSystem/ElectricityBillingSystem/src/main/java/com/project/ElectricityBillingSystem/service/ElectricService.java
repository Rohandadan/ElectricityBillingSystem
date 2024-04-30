package com.project.ElectricityBillingSystem.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.ElectricityBillingSystem.Repository.AccountRepository;
import com.project.ElectricityBillingSystem.models.Account;

@Service
public class ElectricService {
	@Autowired
	AccountRepository accountRepo;
	
	public void makeNewConnection(Account account) {
		accountRepo.save(account);
	}
	public boolean addReading(int reading,String meterno) {
		Account acc = accountRepo.findBymeterno(meterno);

		if(acc !=null) {
			acc.setOreading(acc.getReading());
			acc.setReading(acc.getReading()+reading);
			accountRepo.save(acc);
			return true;
		}
		else {
			return false;
		}
	}
	public boolean billgenerate(String meterno) {
		Account acc = accountRepo.findBymeterno(meterno);
		if(acc !=null) {
			int units = acc.getReading()-acc.getOreading();
			if(acc.getSectorno()>10) {
			acc.setDue(units*4);
			}
			else {
				acc.setDue(units*5);
			}
			accountRepo.save(acc);
			return true;
		}
		else {
			return false;
		}
	}
	public Account getbill(String meterno) {
		// TODO Auto-generated method stub
		Account acc = accountRepo.findBymeterno(meterno);
		return acc;
		
	}
	public boolean deleteconnection(String meterno) {
		// TODO Auto-generated method stub
		Account acc = accountRepo.findBymeterno(meterno);
		if(acc !=null) {
			accountRepo.deleteById(meterno);
			return true;
		}
		else {
			return false;
		}
	}
	public boolean UpdatePhone(String phoneNumber, String meterno) {
		// TODO Auto-generated method stub
		Account acc = accountRepo.findBymeterno(meterno);
		if(acc !=null) {
			acc.setPhoneno(phoneNumber);
			accountRepo.save(acc);
			return true;
		}
		else {
			return false;
		}
	}
	public boolean UpdateSector(int sector, String meterno) {
		// TODO Auto-generated method stub
		Account acc = accountRepo.findBymeterno(meterno);
		if(acc !=null) {
			acc.setSectorno(sector);
			accountRepo.save(acc);
			return true;
		}
		else {
			return false;
		}
	}
	
	public List<Account> getAccounts() {
		
		 List<Account> accounts = new ArrayList<>();
	        
	        return accounts;
	}
	public List<Account> getConnectionsBySector(int sectorno) {
        return accountRepo.findBySectorno(sectorno);
    }
}
