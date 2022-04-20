package order.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import member.model.MemberBean;

@Component("myOrderDao")
public class OrderDao {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	private String namespace="order.model.Order";

	public int insertOrder(String id) { 
		int cnt = sqlSessionTemplate.insert(namespace+".InsertOrder",id);
		return cnt;
	}

	public int getMaxO_num() {
		int maxOid=sqlSessionTemplate.selectOne(namespace+".GetMaxO_num");
		System.out.println("maxOid1:" + maxOid);
		return maxOid;
	}

	public List<OrderBean> orderList(MemberBean loginInfo) {
		List<OrderBean> list=sqlSessionTemplate.selectList(namespace+".OrderList",loginInfo);
		return list;
	}

	
}