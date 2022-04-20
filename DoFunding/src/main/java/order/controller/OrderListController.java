package order.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import member.model.MemberBean;

import order.model.OrderBean;
import order.model.OrderDao;
import product.model.ProductDao;

@Controller
public class OrderListController {

	private final String command = "/order.ord";
	private String getPage = "order_list";

	@Autowired
	private OrderDao orderDao;
	
	@RequestMapping(value=command)
	public String doAction(
			HttpSession session,Model model) {
		MemberBean loginInfo = (MemberBean)session.getAttribute("loginInfo");
		
		//초기화
		session.removeAttribute("destination");
		if(loginInfo==null) { // 
			session.setAttribute("destination", "redirect:/order.ord");
			return "redirect:/login.mem"; // MemberLoginController
		}
		else if(loginInfo.getAccountbank()==null) { // 
			session.setAttribute("destination", "redirect:/order.ord");
			return "redirect:/update.mem"; // MemberLoginController
		}
		else { 
			List<OrderBean> orderList=orderDao.orderList(loginInfo);
			model.addAttribute("orderList", orderList);
			return getPage;
		}
	}


}