package category.model;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;


import member.model.MemberBean;
import utility.Paging;

@Component("myCategoryDao")
public class CategoryDao {
	
		@Autowired
		SqlSessionTemplate sqlSessionTemplate;

		private String namespace="category.model.Category";
		
		
		public  int insertCategory(CategoryBean bean) {
			int cnt = -1;
			cnt= sqlSessionTemplate.insert(namespace+".InsertCategory",bean);
		    return cnt;
		}
   		
		public List<CategoryBean> categoryAll(){
		List<CategoryBean> list = new ArrayList<CategoryBean>();
		return list = sqlSessionTemplate.selectList(namespace+".CategoryAll");
		}
		
				
		public int categoryDelete(String cnum) {
		int cnt = sqlSessionTemplate.delete(namespace+".CategoryDelete",cnum);
		return cnt;
		}

		

}
