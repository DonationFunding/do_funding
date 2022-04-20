package orderdetail.model;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component("myOrderDetailDao")
public class OrderDetailDao {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	private String namespace = "orderdetail.model.OrderDetail";

	public void insertOrderDetail(OrderDetailBean odBean) {
		System.out.println(odBean.getOd_qty());
		System.out.println(odBean.getOd_option_no());
		System.out.println(odBean.getOd_deliver());
		int cnt=sqlSessionTemplate.insert(namespace + ".InsertOrderDetail", odBean);
	}
	
	public void orderDetailList(OrderDetailBean odBean) {
		sqlSessionTemplate.selectList(namespace + ".OrderDetailList", odBean);
	}
	
}

