package com.klef.jfsd.springboot.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "seller_table")
public class Seller {

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Column(name="seller_id")
  private int id;
  @Column(name="seller_Name",nullable=false,length = 50)
  private String name;
 
  @Column(name="seller_email",nullable=false,unique = true,length = 50)
  private String email;
  @Column(name="seller_location",nullable=false,length = 50)
  private String Location;
  @Column(name="seller_password",nullable=false,length = 30)
  private String password;
  @Column(name="seller_contact",nullable=false)
  private String contact;
  @Column(name="seller_active",nullable=false)
  private boolean active;
  
  public int getId() {
    return id;
  }
  public void setId(int id) {
    this.id = id;
  }
  public String getName() {
    return name;
  }
  public void setName(String name) {
	  this.name = name;
  }
 
  public String getEmail() {
    return email;
  }
  public void setEmail(String email) {
    this.email = email;
  }
  public String getLocation() {
    return Location;
  }
  public void setLocation(String location) {
    Location = location;
  }
  public String getContact() {
    return contact;
  }
  public void setContact(String contact) {
    this.contact = contact;
  }
  public String getPassword() {
    return password;
  }
  public void setPassword(String password) {
    this.password = password;
  }


public boolean isActive() {
	return active;
}
public void setActive(boolean active) {
	this.active = active;
}
@Override
public String toString() {
	return "Seller [id=" + id + ", Name=" + name + ", email=" + email
			+ ", Location=" + Location + ", password=" + password + ", contact=" + contact + ", active=" + active + "]";
}

}

  
  
  
  
  
