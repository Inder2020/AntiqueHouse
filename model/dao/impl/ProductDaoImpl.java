package antiquehouse.model.dao.impl;
import java.util.ArrayList;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import antiquehouse.model.dao.ProductDao;
import antiquehouse.model.Product;

@Repository
public class ProductDaoImpl implements ProductDao{

	@Autowired
	SessionFactory sf;
	
	public void addProduct(Product p) {
		Session session=sf.openSession();
		Transaction tx=session.beginTransaction();
		session.save(p);//insert data in product table
		session.flush();
		tx.commit();		
	}
	
	public ArrayList<Product> showAllProducts(){
		Session session=sf.getCurrentSession();
		return (ArrayList<Product>)(session.createQuery("from Product").list());
		
	}

}
