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

@Controller
public class OrderMallController {

	private final String command = "order.mall";
	private String getPage = "shopList";

	@Autowired
	private OrderDao odao;

	// start.jsp���� ���� �ֹ� ���� Ŭ��
	@RequestMapping(value=command)
	public String doAction(HttpSession session,Model model) {
		MemberBean loginInfo = (MemberBean)session.getAttribute("loginInfo");
		if(loginInfo==null) { // �α��� ��������
			session.setAttribute("destination", "redirect:/order.mall");
			return "redirect:/loginForm.mem"; // MemberLoginController

		}
		else { // �α��� ������ 

			MemberBean mb=(MemberBean)session.getAttribute("loginInfo");
			int o_mnum=mb.getNo();
			List<OrderBean> orderList=odao.orderList(o_mnum);  
			//session.setAttribute("orderList", orderList);
			model.addAttribute("orderList", orderList); 
			return getPage; // shopList.jsp 
		}
	}


}
