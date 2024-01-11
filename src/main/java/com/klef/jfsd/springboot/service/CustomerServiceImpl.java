package com.klef.jfsd.springboot.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.repository.CustomerRepository;

@Service
public class CustomerServiceImpl implements CustomerService
{
	@Autowired
    private CustomerRepository customerRepository;
	@Override
	public String addcustomer(Customer customer) {
		customerRepository.save(customer);
		return "You Are Added Successfully";
	}

	@Override
	public String updatecustomer(Customer cus) {
		Customer c = customerRepository.findById(cus.getId()).get();    
	    
	      c.setName(cus.getName());
	      c.setDateofbirth(cus.getDateofbirth());
	      c.setEmail(cus.getEmail());
	      c.setPassword(cus.getPassword());
	      c.setLocation(cus.getLocation());
	      c.setContact(cus.getContact());
	    
	    customerRepository.save(c);
	    
	    return "Customer Updated Successfully";
		
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
	public Customer checkcuslogin(String email, String pwd) {
		
		return customerRepository.checkcuslogin(email, pwd);
	}

	

}
