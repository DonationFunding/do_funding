package orderdetail.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component("myCompositeDao")
public class CompositeDao {
	
	private String namespace="orderdetail.model.Orderdetail";

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	public List<OrderDetailBean> detailList(int od_no) {
		List<OrderDetailBean> detailList = sqlSessionTemplate.selectList(namespace + ".DetailList", od_no);
	
		return detailList;
	}
	
}