package com.klef.jfsd.springboot.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.model.Seller;
import com.klef.jfsd.springboot.repository.CustomerRepository;
import com.klef.jfsd.springboot.repository.SellerRepository;

@Service
public class SellerServiceImpl implements SellerService
{

	@Autowired
	private SellerRepository sellerRepository;

	   @Autowired
		private CustomerRepository customerRepository;
	
	

	@Override
	public String addseller(Seller seller) {
		sellerRepository.save(seller);
		return "Seller Added Successfully";
	}





	@Override
	public Seller checksellerlogin(String email, String pwd) {
		
		return sellerRepository.checksellerlogin(email, pwd);
	}




	public List<Customer> viewallcustomers() {
		
		return customerRepository.findAll();
	}


	@Override
	public Customer viewcustomerbyid(int cid) {
		Optional<Customer> obj =  customerRepository.findById(cid);
        
        if(obj.isPresent())
        {
          Customer cus = obj.get();
          
          return cus;
        }
        else
        {
          return null;
        }
	}

	
	
	
}
