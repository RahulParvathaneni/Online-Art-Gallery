package com.klef.jfsd.springboot.service;




import java.util.List;

import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.model.Seller;

public interface SellerService 
{
	 public List<Customer> viewallcustomers();
	  public Customer viewcustomerbyid(int id);
	public  String addseller(Seller seller);
	public Seller checksellerlogin(String email,String pwd);
	
}
