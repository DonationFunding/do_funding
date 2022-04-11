package orderdetail.model;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component("myOrderDetailDao")
public class OrderDetailDao {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	private String namespace="orderdetail.model.OrderDetail";

	public int insertOrderDetail(OrderDetailBean odBean) {
		System.out.println(odBean.getOid());
		System.out.println(odBean.getPnum());
		System.out.println(odBean.getQty());
		int cnt=sqlSessionTemplate.insert(namespace+".InsertOrderDetail", odBean);
		return cnt;
	}
	
}

