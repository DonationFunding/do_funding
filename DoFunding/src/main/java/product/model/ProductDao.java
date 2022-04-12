package product.model;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
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
	
	//상품 상세정보(content용)
	public ProductBean getProduct(int p_num) {
		//조회수 증가
		int cnt= sqlSessionTemplate.update(namespace+".ReadcountUp", p_num);
		System.out.println("readcount+1");
		ProductBean p_product = sqlSessionTemplate.selectOne(namespace+".GetProduct", p_num);
		return p_product;
	}//getProduct

	//상품 상세정보(update용)
	public ProductBean getupdateProduct(int p_num) {
		ProductBean bean = sqlSessionTemplate.selectOne(namespace+".GetProduct", p_num);
		return bean;
	}//updateProduct

	
<<<<<<< HEAD
//	//상품 다중삭제 이건 혹시 모름
//	public int multiDeleteProduct(String[] rowcheck ){		//다중체크값 넘겨받아오기
//			int cnt=-1;
////			sql="delete Products where gpnum=?";
////			for(int i=0;i<rowcheck.length-1;i++) {
////				sql+=" or gpnum=?";
////				for(int i=0;i<rowcheck.length;i++) {
////					ps.setInt(i+1,Integer.parseInt(rowcheck[i]));
//			cnt=sqlSessionTemplate.delete(namespace+".MultiDeleteProduct", rowcheck);
=======
	//상품 다중삭제 이건 혹시 모름
//	public int multiDeleteProduct(p_num){		//다중체크값 넘겨받아오기			
//		int cnt=-1;
//		cnt = sqlSessionTemplate.delete(namespace+".ProductDelete",p_num);
////			sql="delete Products where gpnum=?";
////			for(int i=0;i<rowcheck.length-1;i++) {
////				sql+=" or gpnum=?";
////				for(int i=0;i<rowcheck.length;i++) {
////					ps.setInt(i+1,Integer.parseInt(rowcheck[i]));
////			cnt=sqlSessionTemplate.delete(namespace+".MultiDeleteProduct", rowcheck);
>>>>>>> refs/heads/do-khc
//			return cnt;	
//	}//multiDeleteProduct		
	
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

	//옵션추가용
	public int getP_num() {
		int p_num=sqlSessionTemplate.selectOne(namespace+".GetP_num");
		return p_num;
	}

	//옵션테이블 옵션추가
	public int itemOptionInsert(Map<String, Object> map) {
		int cnt=-1;
		cnt=sqlSessionTemplate.insert(namespace+".ItemOptionInsert", map);
		return cnt;
	}
	
	//상품 옵션 가져오기
	public List<OptionBean> optionAllByProduct(int p_num) {
		List<OptionBean>list=sqlSessionTemplate.selectList(namespace+".OptionAllByProduct", p_num);
		return list;
	}

	public void itemOptionDelete(int option_item_no) {
		sqlSessionTemplate.delete(namespace+".ItemOptionDelete", option_item_no);
	}
	public int multiDeleteProduct(String[] rowchecks) {
		int count = 0;
		System.out.println("2222");
		for(int i=0;i<rowchecks.length;i++) {
			String rowcheck=rowchecks[i];
			System.out.println("rowcheck:"+rowcheck);
			int cnt = sqlSessionTemplate.delete(namespace+".MultiDeleteProduct",rowcheck);
			System.out.println("22");

<<<<<<< HEAD
			count+=cnt;
		}

		return count;
	}
=======
	public int productDelete(int p_num) {
		int cnt = sqlSessionTemplate.delete(namespace+".ProductDelete",p_num);
		return cnt;
	}


	public int multiDeleteProduct(String[] rowchecks) {
		int count = 0;
		System.out.println("2222");
		for(int i=0;i<rowchecks.length;i++) {
			String rowcheck=rowchecks[i];
			System.out.println("rowcheck:"+rowcheck);
			int cnt = sqlSessionTemplate.delete(namespace+".MultiDeleteProduct",rowcheck);
			System.out.println("22");

			count+=cnt;
		}

		return count;
		
		
	}








>>>>>>> refs/heads/do-khc
}
