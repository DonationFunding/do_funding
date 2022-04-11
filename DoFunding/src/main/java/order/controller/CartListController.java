package order.controller;
/*
 * package mall.controller;
 * 
 * import java.util.ArrayList; import java.util.Map; import java.util.Set;
 * 
 * import javax.servlet.http.HttpSession;
 * 
 * import org.springframework.beans.factory.annotation.Autowired; import
 * org.springframework.stereotype.Controller; import
 * org.springframework.web.bind.annotation.RequestMapping;
 * 
 * import mall.cart.MyCartList; import mall.cart.ShoppingInfo; import
 * product.model.ProductBean; import product.model.ProductDao;
 * 
 * @Controller public class CartListController {
 * 
 * private final String command="/list.mall"; private String getPage="mallList";
 * 
 * @Autowired private ProductDao productDao;
 * 
 * @RequestMapping(value=command) public String doAction(HttpSession session) {
 * 
 * MyCartList mycart = (MyCartList)session.getAttribute("mycart");
 * 
 * Map<Integer, Integer> orderlists = mycart.getAllOrderLists(); // key(상품번호),
 * value(주문수량) //3,2 //6,3 //8,4
 * 
 * ArrayList<ShoppingInfo> lists = new ArrayList<ShoppingInfo>();
 * 
 * Set<Integer> keylist = orderlists.keySet(); // key(상품번호) int totalAmount = 0;
 * for(Integer pnum : keylist) { Integer qty = orderlists.get(pnum);
 * System.out.println(pnum+":" + qty); ProductBean pb =
 * productDao.getProduct(pnum);
 * 
 * ShoppingInfo sinfo=new ShoppingInfo(); sinfo.setPnum(pb.getNum());
 * sinfo.setPname(pb.getName()); sinfo.setQty(qty);
 * sinfo.setPrice(pb.getPrice()); sinfo.setAmount(qty*pb.getPrice());
 * 
 * totalAmount += qty*pb.getPrice(); lists.add(sinfo); }
 * 
 * session.setAttribute("shopLists", lists); session.setAttribute("totalAmount",
 * totalAmount);
 * 
 * return getPage; // mallList }
 * 
 * }
 */