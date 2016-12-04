package antiquehouse.service;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import antiquehouse.model.dao.impl.ProductDaoImpl;
import antiquehouse.model.Product;


@Transactional
@Service
public class ProductService {
	@Autowired
	ProductDaoImpl dao;
	public void addProduct(Product p){
		
		dao.addProduct(p);
	}
	
	public ArrayList<Product>showAllProducts(){
		
		return dao.showAllProducts();
	}
}
