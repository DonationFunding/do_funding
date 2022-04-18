package dip.model;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component("myDipDao")
public class DipDao {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	private String namespace="dip.model.Dip";	
	
	
	public int checkDip(DipBean diBean) {
		return 0;
	}

	public void insertDip(DipBean diBean) {
		
	}

	public int updateDip(DipBean diBean) {
		return 0;
	}

}
