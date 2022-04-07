package product.model;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import utility.Paging;

@Component("myProductdao")

public class ProductDao {
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	private String namespace="product.model.Product";
	
	public int totalCount(Map<String, String> map) {
		int count = sqlSessionTemplate.selectOne(namespace+".GetTotalCount",map);
		return count;
	}

	public List<ProductBean> productList(Paging pageInfo, Map<String, String> map) {
		RowBounds rowBounds=new RowBounds(pageInfo.getOffset(), pageInfo.getLimit());
		List<ProductBean> list=sqlSessionTemplate.selectList(namespace+".ProductList",map,rowBounds);
		return list;
	}
	
	public ProductBean getProduct(int p_num) {
		ProductBean bean = sqlSessionTemplate.selectOne(namespace+".GetProduct", p_num);
		return bean;

	}

	public int insertProduct(ProductBean bean) {
		int cnt = -1;
		cnt = sqlSessionTemplate.insert(namespace+".InsertProduct", bean);
		return cnt;
	}
	
	public int updateProduct(ProductBean bean) {
		int cnt=-1;
		cnt=sqlSessionTemplate.insert(namespace+".UpdateProduct", bean);				
		return cnt;
	}
}
