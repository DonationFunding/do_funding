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

	// productDetailView.jsp���� �ֹ��ϱ� Ŭ��
	@RequestMapping(value=command)
	public String doAction(ProductBean p_product,HttpSession session) {
		System.out.println(p_product.getP_num());
		System.out.println(p_product.getOrderqty());
		
		if(session.getAttribute("loginInfo") == null) { // �α��� �������� 
			session.setAttribute("destination", "redirect:/list.prd");
			return "redirect:/loginForm.mem"; // MemberLoginController
		}
		else { // �α��� ������ 
			MyCartList mycart = (MyCartList)session.getAttribute("mycart");
			if(mycart == null) {
				mycart = new MyCartList();
			}
			mycart.addOrder(p_product.getP_num(),p_product.getOrderqty());
			
			//��ٱ���
			session.setAttribute("mycart", mycart);
			return gotoPage;
		}
	}
}