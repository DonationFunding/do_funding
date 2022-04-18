package like.model;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;


@Component("myLikeDao")
public class LikeDao {
	
	private String namespace="like.model.like";
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	
	
	public int checkLike(LikeBean likebean) {	
		int cnt= -1;
		
		LikeBean ck = sqlSessionTemplate.selectOne(namespace +".CheckLike", likebean);
		if(ck != null) {
			cnt = sqlSessionTemplate.selectOne(namespace +".SelectLike", likebean);	
		}
		
		//sqlSessionTemplate.insert(namespace + ".insertLike", map); //테이블엔 좋아요 x 
		
		//if(cnt == null) 
	return cnt;	
	}

	public int updateLike(LikeBean likebean) {
		int check = 0;
		int cnt = likebean.getL_check();
		if(cnt == 0) {
			sqlSessionTemplate.update(namespace+ ".UpdateLike", likebean);
			check = 1;
		}
		else{
			sqlSessionTemplate.update(namespace+ ".UpdateDisLike", likebean);
			check = 0;
		}
		
		return check;
	}

	public void insertLike(LikeBean likebean) {
		sqlSessionTemplate.insert(namespace+ ".InsertLike", likebean);
		
	}
}
