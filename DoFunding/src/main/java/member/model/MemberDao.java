package member.model;


import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component("myMemberDao")
public class MemberDao {
	private String namespace = "member.model.Member";
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	

	public MemberBean getLoginInfo(MemberBean mb) {
		MemberBean loginInfo = sqlSessionTemplate.selectOne(namespace+".GetLoginInfo",mb);
		return loginInfo;
	}

	public int insertMember(MemberBean membean) {
		int cnt=-1;
		cnt = sqlSessionTemplate.insert(namespace+".InsertMember", membean);
		return cnt;
	}

	public MemberBean findId(MemberBean membean) {
		MemberBean findid = sqlSessionTemplate.selectOne(namespace+".FindId", membean);
		System.out.println("dao/findid.getId :"+findid.getId());
		return findid;
	}

	public int updatePassword(MemberBean membean) {
		int cnt = -1;
		cnt = sqlSessionTemplate.update(namespace+".UpdatePassword", membean);
		if(cnt < 0) {
			System.out.println("비밀번호 변경 실패");
		}
		else {
			System.out.println("비밀번호 변경 성공 "+cnt);
		}
		return cnt;
	}

	public List<MemberBean> getAllMember() {
		List<MemberBean> memlist = sqlSessionTemplate.selectList(namespace+".GetAllMember");
		return memlist;
	}

}
