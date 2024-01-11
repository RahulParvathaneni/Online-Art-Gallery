package com.klef.jfsd.springboot.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.model.Seller;
import com.klef.jfsd.springboot.repository.AdminRepository;
import com.klef.jfsd.springboot.repository.CustomerRepository;
import com.klef.jfsd.springboot.repository.SellerRepository;

@Service
public class AdminServiceImpl implements AdminService
{
    @Autowired
	private AdminRepository adminRepository;
	
    @Autowired
	private CustomerRepository customerRepository;
    
    @Autowired
    private SellerRepository sellerRepository;
	@Override
	
	public List<Customer> viewallcustomers() {
		
		return customerRepository.findAll();
	}

	@Override
	public String deletecustomer(int cid) {
		Optional<Customer> obj =  customerRepository.findById(cid);
        
        String msg = null;
        
        if(obj.isPresent())
        {
          Customer cus = obj.get();
          
          customerRepository.delete(cus);
          
          msg = "Customer Deleted Successfully";
        }
        else
        {
          msg = "Customer Not Found";
        }
        
        return msg;
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

	@Override
	public Admin checkadminlogin(String uname, String pwd) {
		return adminRepository.checkadminlogin(uname, pwd);
	}

	@Override
	public Seller viewsellerbyid(int sid) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Seller> viewallsellers()
	{
		return sellerRepository.findAll();
	}

}
