package productlistingapp.controller;



import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import productlistingapp.dao.ProductDao;
import productlistingapp.model.Product;





@Controller
public class MainController {
	@Autowired
	private ProductDao productDao;
	//Home page
	@RequestMapping("/")
	public String home(Model m) {
		List<Product> products=productDao.getProducts();
		m.addAttribute("products", products);
		m.addAttribute("title","Home Page");
		return "index";
	}
	
	//show add product form
	@RequestMapping("/add-product")
	public String addProduct(Model m) {
	
		m.addAttribute("title","Add Product");
		return "add_Product_form";
	}
	//handle add product form
	@RequestMapping(value = "/handle-product",method = RequestMethod.POST)
	public RedirectView handleproduct(@ModelAttribute Product product,HttpServletRequest req) {
		System.out.println(product);
		productDao.createProduct(product);
		RedirectView red=new RedirectView();
		red.setUrl(req.getContextPath()+"/");
		//System.out.println(req.getContextPath());
		return red;
	}
	//delete Handler
		@RequestMapping("/delete/{productId}")
		public RedirectView deleteproduct(@PathVariable("productId")int productId,HttpServletRequest req){
			
			productDao.deleteProduct(productId);
			RedirectView red=new RedirectView();
			red.setUrl(req.getContextPath()+"/");
			System.out.println(req.getContextPath());
			return red;
		}
		//update Handler
		@RequestMapping("/update/{productId}")
		public String updateproduct(@PathVariable("productId")int pid,Model m){
			
		Product	product =this.productDao.getSingleProduct(pid);
		
			m.addAttribute("product",product);
			m.addAttribute("title","Update product");
			//System.out.println(req.getContextPath());
			return "Update_form" ;
		}
}
