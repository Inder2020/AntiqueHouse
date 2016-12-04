package antiquehouse.model.dao;

import java.util.ArrayList;

import antiquehouse.model.Product;

public interface ProductDao {
	void addProduct(Product p);
	ArrayList<Product> showAllProducts();
}
