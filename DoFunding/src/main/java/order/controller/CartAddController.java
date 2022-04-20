package order.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import member.model.MemberBean;
import order.cart.MyCartList;
import product.model.ProductBean;

@Controller
public class CartAddController {

	private final String command="/add.ord";
	private final String gotoPage="redirect:/cart_list.ord"; // CartListController

	// productDetailView.jsp에서 주문하기 클릭
	@RequestMapping(value=command)
	public String doAction(
			ProductBean bean,
			HttpSession session) {
		
		MemberBean loginInfo = (MemberBean)session.getAttribute("loginInfo");

		
		//초기화
		session.removeAttribute("destination");
		if(loginInfo==null) { // 
			session.setAttribute("destination", "redirect:/order.ord");
			return "redirect:/login.mem"; // MemberLoginController
		}
		else if(loginInfo.getAccountbank()==null) { // 
			session.setAttribute("destination", "redirect:/update.mem");
			return "redirect:/update.mem"; // MemberLoginController
		}
		else {  // 로그인 했으면
			MyCartList mycart = (MyCartList)session.getAttribute("mycart");
			if(mycart == null) {
				mycart = new MyCartList();
			}
			mycart.addOrder(bean.getP_num(),bean.getOrderqty(),bean.getOption_no());
			
			//장바구니
			session.setAttribute("mycart", mycart);
			return gotoPage;
		}
	}
}