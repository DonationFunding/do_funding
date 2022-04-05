package product.controller;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import product.model.ProductDao;

@Controller
public class ProductListController {

	private final String command = "productList.prd";
	private String getPage = "product_list";
	// /WEB-INF/product/productInsertForm.jsp
	private String gotoPage="redirect:/productList.prd";

	
	@Autowired
	private ProductDao productDao;
	
	@Autowired
	ServletContext servletContext;	

	@RequestMapping(command)
	public ModelAndView doAction(
			) {
	
		ModelAndView mav=new ModelAndView();
		mav.setViewName(getPage);
		return mav;		
	}

}
