package com.slksoft.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.slksoft.dao.ProductDao;
import com.slksoft.entity.Product;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class ProductService {
	@Autowired
	ProductDao dao;

	public ProductService() {
		log.info("Product Service instantiated!");	
	}

	public List<Product> getAllProducts() {
		return dao.findAll();
	}

	public Product getProductById(Integer id) {
		log.info("returning a product for id {}", id);
		return dao.findById(id);
	}
	
	public void deleteProduct(Integer id){
		log.info("deleting the product for id {}",id);
		dao.deleteById(id);
	}
	
	public List<Product> getProductsByPriceRange(Double min,Double max){
		return dao.findByPriceRange(min, max);
	}

	public void addNewProduct(Product p) {
		dao.addProduct(p);
		
	}

	public void updateProduct(Product p) {
		dao.updateProduct(p);
		
	}
}
