package order.controller;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import member.model.MemberBean;
import order.cart.MyOrderList;
import order.model.OrderBean;
import order.model.OrderDao;
import product.model.OptionBean;
import product.model.ProductBean;
import product.model.ProductDao;

@Controller
public class OrderMallController {

	private final String command = "/order.ord";
	private String getPage = "order_order";

	@Autowired
	private OrderDao orderDao;
	
	@Autowired
	private ProductDao productDao;

	@RequestMapping(value=command)
	public String doAction(
			ProductBean prdbean,
			OrderBean ordbean,
			OptionBean opbean,
			HttpSession session,Model model) {
		MemberBean loginInfo = (MemberBean)session.getAttribute("loginInfo");
		
//		ProductBean p_product = productDao.getProduct(p_num);
//		List<OptionBean> o_list = productDao.optionAllByProduct(p_num);
//		
//		model.addAttribute("optionList", o_list);
//		model.addAttribute("productBean", p_product);
		
		System.out.println("�ɼ�="+opbean.getOption_content());
		System.out.println("�ɼ�="+opbean.getOption_item_no());
		System.out.println("�ɼ�="+opbean.getOption_no());
		if(loginInfo==null) { // �α��� ��������
			session.setAttribute("destination", "redirect:/order.ord");
			return "redirect:/login.mem"; // MemberLoginController
		}
		else { 
			MyOrderList myorder=(MyOrderList) session.getAttribute("myorder");
			myorder=new MyOrderList();
			session.setAttribute("myorder", myorder);
			
			MemberBean mb=(MemberBean)session.getAttribute("loginInfo");
			int o_mnum=mb.getNo();
			List<OrderBean> orderList=orderDao.orderList(o_mnum);  
			//session.setAttribute("orderList", orderList);
			model.addAttribute("orderList", orderList);
		
			return getPage; // shopList.jsp 
		}
	}


}
