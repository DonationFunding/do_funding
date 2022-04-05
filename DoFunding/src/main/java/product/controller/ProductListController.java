package product.controller;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import product.model.ProductDao;

@Controller
public class ProductListController {

	private final String command = "insert.prd";
	private String getPage = "productInsertForm";
	// /WEB-INF/product/productInsertForm.jsp
	private String gotoPage="redirect:/list.prd";

	
	@Autowired
	private ProductDao productDao;
	
	@Autowired
	ServletContext servletContext;	
	
	
}
