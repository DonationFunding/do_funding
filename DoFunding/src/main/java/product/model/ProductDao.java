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

	//상품 수
	public int totalCount(Map<String, String> map) {
		int count = sqlSessionTemplate.selectOne(namespace+".GetTotalCount",map);
		return count;
	}	
	
	//상품 리스트 정보
	public List<ProductBean> productList(Paging pageInfo, Map<String, String> map) {
		RowBounds rowBounds=new RowBounds(pageInfo.getOffset(), pageInfo.getLimit());
		List<ProductBean> list=sqlSessionTemplate.selectList(namespace+".ProductList",map,rowBounds);
		return list;
	}//getProductAllInfo	
		
	//상품 추가
	public int insertProduct(ProductBean bean) {
		int cnt=-1;		
		cnt=sqlSessionTemplate.insert(namespace+".InsertProduct", bean);				
		System.out.println("추가 갯수:"+cnt);
		return cnt;
	}//insertProduct
	
	//상품 수정
	public int updateProduct(ProductBean bean) {
		int cnt=-1;
		cnt=sqlSessionTemplate.insert(namespace+".UpdateProduct", bean);				
		System.out.println("수정성공 갯수:"+cnt);
		return cnt;
	}//updateProduct
	
	//상품 상세정보(content용)
	public ProductBean getProduct(int p_num) {
		//조회수 증가
		int cnt= sqlSessionTemplate.update(namespace+".ReadcountUp", p_num);
		System.out.println("readcount+1");
		ProductBean bean = sqlSessionTemplate.selectOne(namespace+".GetProduct", p_num);
		return bean;
	}//getProduct

	//상품 상세정보(update용)
	public ProductBean getupdateProduct(int p_num) {
		ProductBean bean = sqlSessionTemplate.selectOne(namespace+".GetProduct", p_num);
		return bean;
	}//updateProduct

	
	//상품 다중삭제 이건 혹시 모름
	public int multiDeleteProduct(String[] rowcheck ){		//다중체크값 넘겨받아오기
			int cnt=-1;
//			sql="delete Products where gpnum=?";
//			for(int i=0;i<rowcheck.length-1;i++) {
//				sql+=" or gpnum=?";
//				for(int i=0;i<rowcheck.length;i++) {
//					ps.setInt(i+1,Integer.parseInt(rowcheck[i]));
			sqlSessionTemplate.delete(namespace+".MultiDeleteProduct", rowcheck);
			return cnt;	
	}//multiDeleteProduct		
	
	//과제정보 관리자검색(부분)
//	public ArrayList<ProductBean> getProductInfoBysearch_admin(String search_gp, String searchtext,int startRow,int endRow) {
//		ArrayList<ProductBean> list=new ArrayList<ProductBean>();	
//			ps.setString(1, "%"+searchtext+"%");									
//				list.add(pdto);
//		return list;
//	}//getProductInfoBysearch_admin

	//과제정보 부분검색 count (관리자용)
	public int getProductInfoBysearchCount_admin(String search_gp, String searchtext) {
		int count=0;	
		return count;
	}//getProductInfoBysearchCount_admin	
	
	

	
	

}
