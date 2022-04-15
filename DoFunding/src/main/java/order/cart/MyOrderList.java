package order.cart;

import java.util.HashMap;
import java.util.Map;

public class MyCartList { // ��ٱ���
	// key(��ǰ��ȣ), value(�ֹ�����) 
	private Map<Integer, Integer> orderlists = null;

	public MyCartList() {
		orderlists = new HashMap<Integer, Integer>();
	}

	public void addOrder(int num, int orderqty) {
		//key,value
		//3,2
		//6,3+4=>7
		//8,4
		if(orderlists.containsKey(num)==false) { // ��ٱ��Ͽ� ������ �߰�
			orderlists.put(num, orderqty);
			
		}else { // ��ٱ��Ͽ� ������ ����
			int orgOrderqty = orderlists.get(num);
			orderlists.put(num, orgOrderqty+orderqty);
		}
		
	}//addOrder	

	public Map<Integer, Integer> getAllOrderLists() {
		return orderlists;

	}
	
}