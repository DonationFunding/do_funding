package admin.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import member.model.MemberBean;

import order.model.OrderBean;
import order.model.OrderDao;
import orderdetail.model.DonationBean;
import product.model.ProductDao;
import utility.Paging;

@Controller
public class AdminOrderListController {

	private final String command = "/admin_ord_list.ord";
	private String getPage = "admin_ord_list";

	@Autowired
	private OrderDao orderDao;
	
	@RequestMapping(value=command)
	public ModelAndView doAction(
			@RequestParam(value="whatColumn", required=false) String whatColumn,
			@RequestParam(value="keyword", required=false) String keyword,
			@RequestParam(value="pageNumber", required=false) String pageNumber,
			Model model,HttpServletRequest request) {
		Map<String, String> map=new HashMap<String, String>();
		map.put("whatColumn", whatColumn);
		map.put("keyword", "%"+keyword+"%");	
		
		int totalCount=orderDao.orderTotalCount(map);
		System.out.println("totalCount:"+totalCount);
		
		String url=request.getContextPath()+command;
		Paging pageInfo=new Paging(pageNumber, "10", totalCount, url, whatColumn, keyword);
		List<OrderBean> orderList=orderDao.allOrderList(pageInfo,map);
			
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("totalCount",totalCount);
		mav.addObject("pageInfo",pageInfo);		
		mav.addObject("orderList", orderList);
		mav.setViewName(getPage);
		return mav;
	}


}
