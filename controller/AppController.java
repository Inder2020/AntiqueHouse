package antiquehouse.controller;
import antiquehouse.model.Product;
import antiquehouse.service.ProductService;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AppController {

	
	@Autowired 
	ServletContext context;
	
	public AppController(){}
	@Autowired
	ProductService ps;
	
	
	public AppController(ProductService ps){
		this.ps=ps;
	}
	@RequestMapping(value = { "/", "/index"} )
	public ModelAndView homePage() {
		return new ModelAndView("index");

	}
	@RequestMapping("/login")
	public ModelAndView loginPage() {
		return new ModelAndView("login");
	}
	
	@RequestMapping("/signup")
	public ModelAndView signupPage() {
		return new ModelAndView("signup");
	}
	
	@RequestMapping("/contactus")
	public ModelAndView contactus() {
		return new ModelAndView("contactus");
	}
	@RequestMapping("/aboutus")
	public ModelAndView aboutus() {
		return new ModelAndView("aboutus");
	}		
	//--------------product controller------------------------------
	@RequestMapping("/addproduct")
	public ModelAndView showAddProductPage(){			
		return new ModelAndView("addproduct","product",new Product());		
	}
	@RequestMapping("/addproductdb")
	public String addProduct(@ModelAttribute("product")Product p){		
			System.out.println("----ADDING A Product---------");
			ps.addProduct(p);
			return "addproduct";
	}		
	/* Show all */
	@RequestMapping("/showallproduct")
	public ModelAndView showall(Model model) {
		ArrayList<Product>productList=ps.showAllProducts();
		model.addAttribute("productList", productList);
		return new ModelAndView("showallproduct");	
	}
	
	
	@RequestMapping("/addnewproduct")
	public String addnewProduct(@ModelAttribute("product")Product p){
		
		
//-----------multipart--------------------------------------------------
		String filename = null;
		System.out.println(context);	
		String path = context.getRealPath("/resources/" + p.getId() + ".jpg");
		System.out.println("Path = " + path);
		System.out.println("File name = " + p.getImage().getOriginalFilename());
		File f = new File(path);
		if (!p.getImage().isEmpty()) {
			try {
				
					filename=p.getImage().getOriginalFilename(); 
					byte[]bytes=p.getImage().getBytes();
					BufferedOutputStream bs=new BufferedOutputStream(new FileOutputStream(f));
					bs.write(bytes);
					bs.close();
					System.out.println("Image uploaded");
				
					//System.out.println("Data Inserted"+(res++));
			} catch (Exception ex) {
				System.out.println(ex.getMessage());
			}
		} 
		
		return "index";
	}
	
	//		return new ModelAndView("redirect:/index?profileStatus=true");
		//}	
		
		
		
}
	
	
	
	
	

