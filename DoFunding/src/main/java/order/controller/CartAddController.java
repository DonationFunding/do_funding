package order.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import order.cart.MyCartList;
import product.model.ProductBean;

@Controller
public class CartAddController {

	private final String command="/add.ord";
	private final String gotoPage="redirect:/list.ord"; // CartListController

	// productDetailView.jsp에서 주문하기 클릭
	@RequestMapping(value=command)
	public String doAction(ProductBean p_product,HttpSession session) {
		System.out.println(p_product.getP_num());
		System.out.println(p_product.getOrderqty());
		
		if(session.getAttribute("loginInfo") == null) { // 로그인 안했으면 
			session.setAttribute("destination", "redirect:/list.prd");
			return "redirect:/loginForm.mem"; // MemberLoginController
		}
		else { // 로그인 했으면 
			MyCartList mycart = (MyCartList)session.getAttribute("mycart");
			if(mycart == null) {
				mycart = new MyCartList();
			}
			mycart.addOrder(p_product.getP_num(),p_product.getOrderqty());
			
			//장바구니
			session.setAttribute("mycart", mycart);
			return gotoPage;
		}
	}
}