package order.cart;

import java.util.ArrayList;
import java.util.List;


//장바구니
public class MyCartList { 

	//장바구니
	private List<int[]> orderlists = null;

	public MyCartList() {
		orderlists = new ArrayList<int[]>();
	}

	
	public void addOrder(int p_num, int orderqty,int option_no) {
		//상품번호,주문수량,옵션번호
		//3,2
		//6,3+4=>7
		//8,4
		boolean check=false;
		for(int[] order : orderlists) {	
			if(order[0] == p_num && order[2] == option_no) {
				//상품번호랑 옵션이 같으면 장바구니에 있던거 수량만 누적
				order[1]=order[1]+orderqty;
			}
			else { //장바구니에 기존에 없던거면 추가
				orderlists.add(new int[]{p_num,orderqty,option_no});
			}
		}

		
	}//addOrder	
	
	public List<int[]> getAllOrderLists() {
		return orderlists;

	}
	
}