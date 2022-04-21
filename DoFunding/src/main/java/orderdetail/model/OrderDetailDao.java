package orderdetail.model;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component("myOrderDetailDao")
public class OrderDetailDao {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	private String namespace = "orderdetail.model.Orderdetail";

	public void insertOrderDetail(OrderDetailBean odBean) {
		System.out.println(odBean.getOd_qty());
		System.out.println(odBean.getOd_option_no());
		System.out.println(odBean.getOd_p_num());
		System.out.println(odBean.getOd_o_num());
		System.out.println(odBean.getOd_deliver());
		int cnt=sqlSessionTemplate.insert(namespace+".InsertOrderDetail", odBean);
		System.out.println(cnt);
	}
	
	public void orderDetailList(OrderDetailBean odBean) {
		sqlSessionTemplate.selectList(namespace + ".OrderDetailList", odBean);
	}

	public void insertDonation(DonationBean doBean) {
		int cnt=sqlSessionTemplate.insert(namespace+".InsertDonation",doBean);
		System.out.println(cnt);
	}
	
}

