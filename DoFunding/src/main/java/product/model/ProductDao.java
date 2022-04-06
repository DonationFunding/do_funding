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

	private String namespace="product.model.Product";

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	//��ǰ ��
	public int totalCount(Map<String, String> map) {
		int count = sqlSessionTemplate.selectOne(namespace+".GetTotalCount",map);
		return count;
	}	
	
	//��ǰ ����Ʈ ����
	public List<ProductBean> productList(Paging pageInfo, Map<String, String> map) {
		RowBounds rowBounds=new RowBounds(pageInfo.getOffset(), pageInfo.getLimit());
		List<ProductBean> list=sqlSessionTemplate.selectList(namespace+".ProductList",map,rowBounds);
		return list;
	}//getProductAllInfo	
		
	//��ǰ �߰�
	public int insertProduct(ProductBean bean) {
		int cnt=-1;		
		cnt=sqlSessionTemplate.insert(namespace+".InsertProduct", bean);				
		System.out.println("�߰� ����:"+cnt);
		return cnt;
	}//insertProduct
	
	//��ǰ ����
	public int updateProduct(ProductBean bean) {
		int cnt=-1;
		cnt=sqlSessionTemplate.insert(namespace+".UpdateProduct", bean);				
		System.out.println("�������� ����:"+cnt);
		return cnt;
	}//updateProduct
	
	//��ǰ ������(content��)
	public ProductBean getProduct(int p_num) {
		//��ȸ�� ����
		int cnt= sqlSessionTemplate.update(namespace+".ReadcountUp", p_num);
		System.out.println("readcount+1");
		ProductBean bean = sqlSessionTemplate.selectOne(namespace+".GetProduct", p_num);
		return bean;
	}//getProduct

	//��ǰ ������(update��)
	public ProductBean getupdateProduct(int p_num) {
		ProductBean bean = sqlSessionTemplate.selectOne(namespace+".GetProduct", p_num);
		return bean;
	}//updateProduct

	
	//��ǰ ���߻��� �̰� Ȥ�� ��
	public int multiDeleteProduct(String[] rowcheck ){		//����üũ�� �Ѱܹ޾ƿ���
			int cnt=-1;
//			sql="delete Products where gpnum=?";
//			for(int i=0;i<rowcheck.length-1;i++) {
//				sql+=" or gpnum=?";
//				for(int i=0;i<rowcheck.length;i++) {
//					ps.setInt(i+1,Integer.parseInt(rowcheck[i]));
			sqlSessionTemplate.delete(namespace+".MultiDeleteProduct", rowcheck);
			return cnt;	
	}//multiDeleteProduct		
	
	//�������� �����ڰ˻�(�κ�)
//	public ArrayList<ProductBean> getProductInfoBysearch_admin(String search_gp, String searchtext,int startRow,int endRow) {
//		ArrayList<ProductBean> list=new ArrayList<ProductBean>();	
//			ps.setString(1, "%"+searchtext+"%");									
//				list.add(pdto);
//		return list;
//	}//getProductInfoBysearch_admin

	//�������� �κа˻� count (�����ڿ�)
	public int getProductInfoBysearchCount_admin(String search_gp, String searchtext) {
		int count=0;	
		return count;
	}//getProductInfoBysearchCount_admin	
	
	

	
	

}
