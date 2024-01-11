package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;


import com.klef.jfsd.springboot.model.Seller;

@Repository
public interface SellerRepository extends JpaRepository<Seller, Integer>
{
	@Query("select e from Seller e where e.email=?1 and e.password=?2 ")
	   public Seller checksellerlogin(String email,String pwd);
}
