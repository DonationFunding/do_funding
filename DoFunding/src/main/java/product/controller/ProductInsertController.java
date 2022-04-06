package product.controller;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import product.model.ProductDao;

@Controller
public class ProductInsertController {
	
	private final String command = "productList.prd";
	private String getPage = "product_list"; // /WEB-INF/product/productList.jsp
	
	@Autowired
	private ProductDao productDao;
	
	@Autowired
	ServletContext servletContext;	
	
	
}
