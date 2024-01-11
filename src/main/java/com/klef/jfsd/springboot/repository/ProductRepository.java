package com.klef.jfsd.springboot.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.klef.jfsd.springboot.model.Product;

public interface ProductRepository extends CrudRepository<Product, Integer>
{
	@Query("from Product p where p.category=?1")
	  public List<Product> viewallproductsbycategory(String category);
}
