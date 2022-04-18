package order.controller;

import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import member.model.MemberBean;
import order.cart.MyOrderList;
import order.cart.ShoppingInfo;
import order.model.OrderBean;
import order.model.OrderDao;
import product.model.OptionBean;
import product.model.ProductBean;
import product.model.ProductDao;

@Controller
public class OrderMallController {

	private final String command = "order.ord";
	private String getPage = "order_order";

	@Autowired
	private OrderDao orderDao;
	
	@Autowired
	private ProductDao productDao;

	// start.jsp에서 나의 주문 내역 클릭
	@RequestMapping(value=command)
	public String doAction(
			ProductBean prdbean,
<<<<<<< HEAD
			OrderBean opbean,
			HttpSession session,
			Model model) {
		System.out.println("p_num="+prdbean.getP_num());
		System.out.println("orderqty="+opbean.getO_qty());
		System.out.println("상품명="+prdbean.getP_subject());
		System.out.println("단가="+prdbean.getP_origin_price());
=======
			OrderBean ordbean,
			OptionBean opbean,
			HttpSession session,Model model) {
>>>>>>> refs/remotes/origin/do-hjh
		
		MemberBean loginInfo = (MemberBean)session.getAttribute("loginInfo");
		
//		ProductBean p_product = productDao.getProduct(p_num);
//		List<OptionBean> o_list = productDao.optionAllByProduct(p_num);
//		
//		model.addAttribute("optionList", o_list);
//		model.addAttribute("productBean", p_product);
		
		System.out.println("옵션="+opbean.getOption_content());
		System.out.println("옵션="+opbean.getOption_item_no());
		System.out.println("옵션="+opbean.getOption_no());
		if(loginInfo==null) { // 로그인 안했으면
			session.setAttribute("destination", "redirect:/order.ord");
			return "redirect:/login.mem"; // MemberLoginController

		}
		else { // 로그인 했으면 

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
