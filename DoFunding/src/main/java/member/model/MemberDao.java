package member.model;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class MemberDao {
	private String namespace="member.model.Member";
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	public MemberBean getMember(MemberBean mb) {
		MemberBean loginInfo;
		loginInfo = (MemberBean)sqlSessionTemplate.selectOne(namespace+".GetMember",mb);
		return loginInfo;
	}

	public int insertMember(MemberBean mb) {
		int cnt = sqlSessionTemplate.insert(namespace+".InsertMember", mb);
		return cnt;
	}
	
	
	
	
	
	
}
