package com.project.ElectricityBillingSystem.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.ElectricityBillingSystem.models.Account;

public interface AccountRepository extends JpaRepository<Account, String>{

	Account findBymeterno(String meterno);
	
	List<Account> findBySectorno(int sectorno);

}
