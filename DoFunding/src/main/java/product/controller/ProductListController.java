package product.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import product.model.ProductBean;
import product.model.ProductDao;
import utility.Paging;

@Controller
public class ProductListController {

	private final String command = "list.prd";
	private String getPage = "product_list";
	// /WEB-INF/product/productInsertForm.jsp
	private String gotoPage="redirect:/list.prd";

	
	@Autowired
	private ProductDao productDao;
	
	@Autowired
	ServletContext servletContext;	

	@RequestMapping(command)
	public ModelAndView doAction(
			@RequestParam(value="whatColumn", required=false) String whatColumn,
			@RequestParam(value="keyword", required=false) String keyword,
			@RequestParam(value="pageNumber", required=false) String pageNumber,
			HttpServletRequest request
			) {
		Map<String, String> map=new HashMap<String, String>();
		map.put("whatColumn", whatColumn);
		map.put("keyword", "%"+keyword+"%");
		
		int totalCount=productDao.totalCount(map);
		System.out.println("totalCount:"+totalCount);
		
		String url=request.getContextPath()+command;
		Paging pageInfo=new Paging(pageNumber, "5", totalCount, url, whatColumn, keyword);
	
		  
		List<ProductBean> list = productDao.productList(pageInfo, map);
	 
		ModelAndView mav=new ModelAndView();
		mav.addObject("list",list);
		mav.addObject("totalCount",totalCount);
		mav.addObject("pageInfo",pageInfo);

		mav.setViewName(getPage);
		return mav;		
	}

}
