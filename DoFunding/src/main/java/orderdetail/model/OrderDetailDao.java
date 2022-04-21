package orderdetail.model;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import utility.Paging;

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
		sqlSessionTemplate.selectList(namespace+".OrderDetailList",odBean);
	}

	public void insertDonation(DonationBean doBean) {
		int cnt=sqlSessionTemplate.insert(namespace+".InsertDonation",doBean);
		System.out.println(cnt);
	}

	public List<DonationBean> getDonaList(Paging pageInfo, int no) {
		RowBounds rowBounds=new RowBounds(pageInfo.getOffset(), pageInfo.getLimit());
		List<DonationBean> donaList=sqlSessionTemplate.selectList(namespace+".GetDonaList", no, rowBounds);
		return donaList;
	}

	public int donaTotalCount(int no) {
		int count = sqlSessionTemplate.selectOne(namespace+".DonaTotalCount",no);
		return count;
	}
	
}

