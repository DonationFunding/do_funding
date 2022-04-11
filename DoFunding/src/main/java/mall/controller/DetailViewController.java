/*
 * package mall.controller;
 * 
 * import java.util.List;
 * 
 * import javax.servlet.http.HttpSession;
 * 
 * import org.springframework.beans.factory.annotation.Autowired; import
 * org.springframework.stereotype.Controller; import
 * org.springframework.ui.Model; import
 * org.springframework.web.bind.annotation.RequestMapping; import
 * org.springframework.web.bind.annotation.RequestMethod; import
 * org.springframework.web.bind.annotation.RequestParam;
 * 
 * import mall.cart.ShoppingInfo; import product.model.CompositeDao;
 * 
 * @Controller public class DetailViewController {
 * 
 * private final String command="/detailView.mall"; private final String
 * getPage="shopDetailView";
 * 
 * @Autowired private CompositeDao compositeDao;
 * 
 * //shopList.jsp에서 상세보기
 * 
 * @RequestMapping(value=command, method=RequestMethod.GET) public String
 * doAction(
 * 
 * @RequestParam("oid") int oid, HttpSession session, Model model) { //주문 상세 보기
 * List<ShoppingInfo> detailList=compositeDao.detailList(oid); for(ShoppingInfo
 * sh:detailList) { System.out.println("controll:"+sh.getPnum());
 * System.out.println("controll:"+sh.getPname()); } model.addAttribute("oid",
 * oid); model.addAttribute("detailList", detailList); return getPage; }
 * 
 * }
 */