package dip.model;

<<<<<<< HEAD
=======

>>>>>>> refs/remotes/origin/do_cjh
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component("myDipDao")
public class DipDao {
<<<<<<< HEAD

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	private String namespace="dip.model.Dip";	
	
	
	public int checkDip(DipBean diBean) {
		return 0;
	}

	public void insertDip(DipBean diBean) {
=======
	
	private String namespace="dip.model.Dip";
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	
	
	public int checkDip(DipBean diBean) {	
		int cnt= -1;
>>>>>>> refs/remotes/origin/do_cjh
		
		DipBean ck = sqlSessionTemplate.selectOne(namespace +".CheckDip", diBean);
		if(ck != null) {
			cnt = sqlSessionTemplate.selectOne(namespace +".SelectDip", diBean);	
		}
		
		//sqlSessionTemplate.insert(namespace + ".insertDip", map); //���̺� ���ƿ� x 
		
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