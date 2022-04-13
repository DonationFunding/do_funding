package member.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import member.model.MemberBean;
import member.model.MemberDao;

@Controller
public class MemberFindPasswordController {
	private final String command = "findpw.mem";
	private final String getPage = "member_find";
	private String gotoPage = "member_findPassword";
	@Autowired
	MemberDao mdao;
	
	@RequestMapping(value = command,method = RequestMethod.POST)
	public String doAction(MemberBean membean ,HttpServletRequest request) {
		mdao.get
		
		return getPage;
	}
	
}
