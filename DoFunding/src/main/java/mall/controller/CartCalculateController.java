/*
 * package mall.controller;
 * 
 * import java.util.Map; import java.util.Set;
 * 
 * import javax.servlet.http.HttpSession;
 * 
 * import org.springframework.beans.factory.annotation.Autowired; import
 * org.springframework.beans.factory.annotation.Qualifier; import
 * org.springframework.stereotype.Controller; import
 * org.springframework.web.bind.annotation.RequestMapping;
 * 
 * import mall.cart.MyCartList; import member.model.MemberBean; import
 * member.model.MemberDao; import order.model.OrderDao; import
 * orderdetail.model.OrderDetailBean; import orderdetail.model.OrderDetailDao;
 * import product.model.ProductDao;
 * 
 * @Controller public class CartCalculateController { private final String
 * command = "calculate.mall"; private String getPage = "redirect:/list.mall";
 * private String gotoPage = "redirect:/list.prd";
 * 
 * @Autowired private ProductDao productDao;
 * 
 * @Autowired private MemberDao memberDao;
 * 
 * @Autowired
 * 
 * @Qualifier("myOrderDao") private OrderDao orderDao;
 * 
 * @Autowired private OrderDetailDao orderDetailDao;
 * 
 * //mallList.jsp(�ֹ� ��������) �����ϱ� Ŭ��
 * 
 * @RequestMapping(command) public String doAction(HttpSession session ) {
 * 
 * MyCartList mycart = (MyCartList)session.getAttribute("mycart"); Map<Integer,
 * Integer> orderlists = mycart.getAllOrderLists(); // 1,2 // 3,4 Set<Integer>
 * klists = orderlists.keySet();
 * 
 * MemberBean loginInfo = (MemberBean)session.getAttribute("loginInfo");
 * 
 * orderDao.insertOrder(loginInfo.getId());
 * 
 * //orders ���̺��� ���� ū oid�� �����ͼ� //orderdetails�� oid�� �ֱ� int maxOid =
 * orderDao.getMaxOid(); System.out.println("maxOid2:" + maxOid);
 * 
 * // ��ǰ ��� ���� ���� for(Integer pnum : klists) { Integer qty =
 * orderlists.get(pnum); productDao.stockUpdate(pnum , qty ); OrderDetailBean
 * odBean=new OrderDetailBean(); odBean.setOid(maxOid); odBean.setPnum(pnum);
 * odBean.setQty(qty); int cnt=orderDetailDao.insertOrderDetail(odBean); }
 * 
 * // ȸ�� mpoint ���� memberDao.mpointUpdate(loginInfo.getId(),100);
 * session.removeAttribute("mycart"); return gotoPage; }
 * 
 * }
 */