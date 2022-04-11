package product.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import product.model.ProductBean;
import product.model.ProductDao;

@Controller
public class productDetailController {

	private final String command = "/productDetail.prd";
	private String getPage = "product_detailView"; 
	
	@Autowired
	@Qualifier("myProductDao")
	private ProductDao productDao;	
	
	@RequestMapping(value = command ,method = RequestMethod.GET)
	public String doAction(
			@RequestParam(value = "p_num",required = true) int p_num,
			@RequestParam(value = "pageNumber",required = true) String pageNumber,
			Model model) {
		
		ProductBean p_product = productDao.getProduct(p_num);
		model.addAttribute("p_product", p_product);
		model.addAttribute("pageNumber", pageNumber);
		return getPage;
	}
}
