package order.cart;

import java.util.HashMap;
import java.util.Map;

public class MyCartList { // 장바구니
	// key(상품번호), value(주문수량) 
	private Map<Integer, Integer> orderlists = null;

	public MyCartList() {
		orderlists = new HashMap<Integer, Integer>();
	}

	public void addOrder(int num, int orderqty) {
		//key,value
		//3,2
		//6,3+4=>7
		//8,4
		if(orderlists.containsKey(num)==false) { // 장바구니에 없으면 추가
			orderlists.put(num, orderqty);
			
		}else { // 장바구니에 있으면 누적
			int orgOrderqty = orderlists.get(num);
			orderlists.put(num, orgOrderqty+orderqty);
		}
		
	}//addOrder	

	public Map<Integer, Integer> getAllOrderLists() {
		return orderlists;

	}
	
}