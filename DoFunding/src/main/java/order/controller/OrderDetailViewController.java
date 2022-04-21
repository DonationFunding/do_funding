package order.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import order.cart.ShoppingInfo;
import orderdetail.model.OrderDetailBean;
import orderdetail.model.CompositeDao;

@Controller
public class OrderDetailViewController {
	private final String command = "/order_detail.ord";
	private final String getPage = "order_detailView";

	@Autowired
	private CompositeDao CompositeDao;
	
	@RequestMapping(value=command, method=RequestMethod.GET)
	public ModelAndView doAction(@RequestParam("o_num") int o_num) { 
		ModelAndView mav = new ModelAndView();
		List<ShoppingInfo> detailList = CompositeDao.detailList(o_num);
		System.out.println("detailList:"+detailList.size());
		mav.addObject("detailList", detailList);
		mav.addObject("o_num", o_num);
		mav.setViewName(getPage);
		
		return mav;
	}

}
