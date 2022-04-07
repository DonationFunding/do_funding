package category.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import category.model.CategoryDao;

@Controller
public class CategoryDeleteController {

	private final String command = "delete.cat";
	private String gotoPage = "redirect:/list.cat";
	
	@Autowired
	private CategoryDao cdao;
	
	@RequestMapping(command)
	public String doAction(
			@RequestParam(value="cnum",required = true) int cnum,
			@RequestParam(value="pageNumber",required = true) int pageNumber) {
		
		int cnt=cdao.categoryDelete(cnum);   

		return gotoPage + "?pageNumber="+pageNumber;

	}
}
