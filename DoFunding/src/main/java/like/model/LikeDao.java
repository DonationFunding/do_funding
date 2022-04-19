package like.model;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;


@Component("myLikeDao")
public class LikeDao {
	
	private String namespace="like.model.Like";
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	
	
	public int checkLike(LikeBean likeBean) {	
		int cnt= -1;
		
		LikeBean ck = sqlSessionTemplate.selectOne(namespace +".CheckLike", likeBean);
		if(ck != null) {
			cnt = sqlSessionTemplate.selectOne(namespace +".SelectLike", likeBean);	
		}
		
		//sqlSessionTemplate.insert(namespace + ".insertLike", map); //테이블엔 좋아요 x 
		
		//if(cnt == null) 
	return cnt;	
	}

	public int updateLike(LikeBean likeBean) {
		int check = 0;
		int cnt = likeBean.getL_check();
		if(cnt == 0) {
			sqlSessionTemplate.update(namespace+ ".UpdateLike", likeBean);
			check = 1;
		}
		else{
			sqlSessionTemplate.update(namespace+ ".UpdateDisLike", likeBean);
			check = 0;
		}
		
		return check;
	}

	public void insertLike(LikeBean likeBean) {
		sqlSessionTemplate.insert(namespace+ ".InsertLike", likeBean);
		
	}
}
