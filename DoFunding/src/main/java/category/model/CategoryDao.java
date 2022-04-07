package category.model;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;


import utility.Paging;

@Component("myCategoryDao")
public class CategoryDao {
	
		@Autowired
		SqlSessionTemplate sqlSessionTemplate;

		private String namespace="category.model.Category";
		
		
		public int insertCategory(CategoryBean bean) {
			int cnt= -1; 
			cnt= sqlSessionTemplate.insert(namespace+".InsertCategory",bean);
		    return cnt;
		}
		
		public int totalCount(Map<String, String> map) {
			int count = sqlSessionTemplate.selectOne(namespace+".TotalCount",map);
			return count;
		}	
   		
		public List<CategoryBean> categoryAll(Paging pageInfo, Map<String, String> map){
		List<CategoryBean> list = new ArrayList<CategoryBean>();
		RowBounds rowBounds=new RowBounds(pageInfo.getOffset(), pageInfo.getLimit());
		list = sqlSessionTemplate.selectList(namespace+".CategoryAll",map,rowBounds);
		return list;
		}
		
				
		public int categoryDelete(int cnum) {
		int cnt = sqlSessionTemplate.delete(namespace+".CategoryDelete",cnum);
		return cnt;
		}

		public CategoryBean getCategory(int cnum) {
			CategoryBean bean = sqlSessionTemplate.selectOne(namespace+".GetCategory",cnum);
			return bean;
		}

		 public int updateCategory(CategoryBean category) {
			int cnt = sqlSessionTemplate.update(namespace+".UpdateCategory",category);
			return cnt;
		}
		

}
