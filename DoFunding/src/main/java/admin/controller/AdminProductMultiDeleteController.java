package admin.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import product.model.ProductBean;
import product.model.ProductDao;

@Controller
public class AdminProductMultiDeleteController {
	
	private final String command = "admin_prd_multidelete.ad";
	private String gotoPage = "redirect:/admin_prd_list.ad";
	
	@Autowired
	private ProductDao productDao;
	
	@RequestMapping(command)
	public String doAction(
			@RequestParam(value="pageNumber",required = true) int pageNumber,
			HttpServletRequest request) {
		//System.out.println(productBean.getRowcheck());
		String[] rowcheck=request.getParameterValues("rowcheck");
		
		System.out.println("1111");

		int cnt = productDao.multiDeleteProduct(rowcheck);   
		System.out.println("3333");

		return gotoPage + "?pageNumber="+pageNumber;

}
}
