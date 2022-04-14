package product.model;


import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;


import utility.Paging;

@Component("myProductDao")
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

	public int insertProduct(ProductBean bean) {
		int cnt = -1;
		cnt = sqlSessionTemplate.insert(namespace+".InsertProduct", bean);
		return cnt;
	}
	
	public int updateProduct(ProductBean bean) {
		int cnt=-1;
		cnt=sqlSessionTemplate.update(namespace+".UpdateProduct", bean);				
		return cnt;

	}//updateProduct
	
	//��ǰ ������(content��)
	public ProductBean getProduct(int p_num) {
		//��ȸ�� ����
		int cnt= sqlSessionTemplate.update(namespace+".ReadcountUp", p_num);
		System.out.println("readcount+1");
		ProductBean p_product = sqlSessionTemplate.selectOne(namespace+".GetProduct", p_num);
		return p_product;
	}//getProduct

	//��ǰ ������(update��)
	public ProductBean getupdateProduct(int p_num) {
		ProductBean bean = sqlSessionTemplate.selectOne(namespace+".GetProduct", p_num);
		return bean;
	}//updateProduct


	//�������� �κа˻� count (�����ڿ�)
	public int getProductInfoBysearchCount_admin(String search_gp, String searchtext) {
		int count=0;	
		return count;
	}//getProductInfoBysearchCount_admin	

	//�ɼ��߰���
	public int getP_num() {
		int p_num=sqlSessionTemplate.selectOne(namespace+".GetP_num");
		return p_num;
	}

	//�ɼ����̺� �ɼ��߰�
	public int itemOptionInsert(Map<String, Object> map) {
		int cnt=-1;
		cnt=sqlSessionTemplate.insert(namespace+".ItemOptionInsert", map);
		return cnt;
	}
	
	//��ǰ �ɼ� ��������
	public List<OptionBean> optionAllByProduct(int p_num) {
		List<OptionBean>list=sqlSessionTemplate.selectList(namespace+".OptionAllByProduct", p_num);
		return list;
	}

	public void itemOptionDelete(int option_item_no) {
		sqlSessionTemplate.delete(namespace+".ItemOptionDelete", option_item_no);
	}

	public int productDelete(int p_num) {
		int cnt = sqlSessionTemplate.delete(namespace+".ProductDelete",p_num);
		return cnt;
	}


	public int multiDeleteProduct(String[] rowchecks) {
		int count = 0;
		for(int i=0;i<rowchecks.length;i++) {
			String rowcheck=rowchecks[i];
			System.out.println("rowcheck:"+rowcheck);
			int cnt = sqlSessionTemplate.delete(namespace+".MultiDeleteProduct",rowcheck);

			count+=cnt;
		}

		return count;
		
		
	}


}
