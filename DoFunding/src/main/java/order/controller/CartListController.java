package order.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import order.cart.MyCartList;
import order.cart.ShoppingInfo;
import product.model.OptionBean;
import product.model.ProductBean;
import product.model.ProductDao;

@Controller
public class CartListController {

	
	private final String command="/cart_list.ord";
	private String getPage="cart_List";

	@Autowired
	private ProductDao productDao;

	//add.mall에서 로그인도 다하고 장바구니 해서 넘어옴
	@RequestMapping(value=command)
	public String doAction(HttpSession session) {
		
		MyCartList mycart = (MyCartList)session.getAttribute("mycart");
		
		List<int[]> orderlists = mycart.getAllOrderLists();
		// key(상품번호), value(주문수량) , 옵션 번호
	
		//장바구니 정보화
		ArrayList<ShoppingInfo> lists = new ArrayList<ShoppingInfo>();
		
		int totalAmount = 0;
		for(int[] info : orderlists) {
			int p_num = info[0];	//상품번호
			int o_qty = info[1];	//상품수량
			int option_no = info[2];	//선택된 옵션번호
			System.out.println(p_num+":" + o_qty); 
			ProductBean pb = productDao.getProduct(p_num);
			OptionBean ob = productDao.getOption(option_no);
			
			ShoppingInfo sinfo=new ShoppingInfo();
			sinfo.setp_num(pb.getP_num());
			sinfo.setp_subject(pb.getP_subject());
			sinfo.setQty(o_qty);
			sinfo.setPrice(pb.getP_origin_price());
			sinfo.setAmount(o_qty*pb.getP_origin_price());	//주문 수량*상품 단가
			sinfo.setOption_no(option_no);
			sinfo.setOption_content(ob.getOption_content());
			totalAmount += o_qty*pb.getP_origin_price();
			lists.add(sinfo);
		}
		
		session.setAttribute("shopLists", lists);//장바구니 보여주기용
		session.setAttribute("totalAmount", totalAmount);
		
		return getPage; // cart_List
	}

}