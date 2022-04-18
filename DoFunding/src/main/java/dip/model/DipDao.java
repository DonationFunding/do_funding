package dip.model;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component("myDipDao")
public class DipDao {
	
	private String namespace="dip.model.Dip";
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	
	
	public int checkDip(DipBean diBean) {	
		int cnt= -1;
		
		DipBean ck = sqlSessionTemplate.selectOne(namespace +".CheckDip", diBean);
		if(ck != null) {
			cnt = sqlSessionTemplate.selectOne(namespace +".SelectDip", diBean);	
		}
		
		//sqlSessionTemplate.insert(namespace + ".insertDip", map); //테이블엔 좋아요 x 
		
		//if(cnt == null) 
	return cnt;	
	}

	public int updateDip(DipBean diBean) {
		int check = 0;
		int cnt = diBean.getD_check();
		if(cnt == 0) {
			sqlSessionTemplate.update(namespace+ ".UpdateLikeDip", diBean);
			check = 1;
		}
		else{
			sqlSessionTemplate.update(namespace+ ".UpdateDisLikeDip", diBean);
			check = 0;
		}
		
		return check;
	}

	public void insertDip(DipBean diBean) {
		sqlSessionTemplate.insert(namespace+ ".InsertDip", diBean);
		
	}
}