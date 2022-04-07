/*
 * package mall.controller;
 * 
 * import java.util.List;
 * 
 * 
 * import javax.servlet.http.HttpSession;
 * 
 * import org.springframework.beans.factory.annotation.Autowired; import
 * org.springframework.stereotype.Controller; import
 * org.springframework.ui.Model; import
 * org.springframework.web.bind.annotation.RequestMapping;
 * 
 * import member.model.MemberBean; import order.model.OrderBean; import
 * order.model.OrderDao;
 * 
 * @Controller public class OrderMallController {
 * 
 * private final String command="/order.mall"; private final String
 * getPage="shopList";
 * 
 * @Autowired OrderDao orderDao;
 * 
 * //start.jsp에서 나의 주문내역
 * 
 * @RequestMapping(value=command) public String doAction(HttpSession session,
 * Model model) { MemberBean
 * loginInfo=(MemberBean)session.getAttribute("loginInfo"); if(loginInfo ==
 * null) { session.setAttribute("destination", "redirect:/order.mall"); return
 * "redirect:/loginForm.mem"; //MemberController } else { List<OrderBean>
 * orderList=orderDao.orderList(loginInfo); model.addAttribute("orderList",
 * orderList); return getPage; }
 * 
 * } }
 */