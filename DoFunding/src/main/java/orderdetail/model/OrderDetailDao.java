package orderdetail.model;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component("myOrderDetailDao")
public class OrderDetailDao {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	private String namespace = "orderdetail.model.OrderDetailDao";

	public void insertOrderDetail(OrderDetailBean odBean) {
		System.out.println(odBean.getOd_id());
		System.out.println(odBean.getOd_pnum());
		System.out.println(odBean.getOd_pname());
		System.out.println(odBean.getOd_price());
		System.out.println(odBean.getOd_qty());
		System.out.println(odBean.getOd_option());
		System.out.println(odBean.getOd_amount());
		System.out.println(odBean.getOd_deliver());
		sqlSessionTemplate.insert(namespace + ".InsertOrderDetail", odBean);
	}
	
}

