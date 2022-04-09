package member.model;

<<<<<<< HEAD
import org.springframework.stereotype.Component;

@Component("myMemberDao")
=======
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
>>>>>>> refs/remotes/origin/do-pms
public class MemberDao {
	private String namespace = "member.model.Member";
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public MemberBean getLoginInfo(MemberBean mb) {
		MemberBean loginInfo = sqlSessionTemplate.selectOne(namespace+".GetLoginInfo",mb);
		return loginInfo;
	}

	public int insertMember(MemberBean mb) {
		int cnt=-1;
		cnt = sqlSessionTemplate.insert(namespace+".InsertMember", mb);
		return cnt;
	}

}
