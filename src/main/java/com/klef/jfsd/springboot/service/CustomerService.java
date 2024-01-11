package com.klef.jfsd.springboot.service;




import com.klef.jfsd.springboot.model.Customer;

public interface CustomerService 
{
  public String addcustomer(Customer customer);
  public String updatecustomer(Customer cus);
  public Customer viewcustomerbyid(int cid);
  public Customer checkcuslogin(String email,String pwd);

}
