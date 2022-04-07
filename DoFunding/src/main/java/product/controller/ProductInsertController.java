package product.controller;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import product.model.ProductDao;

@Controller
public class ProductInsertController {
	
	private final String command = "insert.prd";
	private String getPage = "productInsertForm"; 
	private String gotoPage = "redirect:product_list"; 
	
	@Autowired
	@Qualifier("myProductDao")
	private ProductDao productDao;
	
	@Autowired
	ServletContext servletContext;	
	
	@RequestMapping(command)
	public String doAction() {
		return getPage;
	}
}
