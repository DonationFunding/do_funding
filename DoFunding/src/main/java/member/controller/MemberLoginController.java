package member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import member.model.MemberBean;
import member.model.MemberDao;

@Controller
public class MemberLoginController {
	private final String command="login.mem";
	private final String getPage="login";
	private String gotoPage="redirect:/list.prd";
	@Autowired
	MemberDao mdao;
	
	@RequestMapping(value = command,method = RequestMethod.GET)
	public String doAction() {
		return getPage;
	}

	@RequestMapping(value = command,method = RequestMethod.POST)
	public String doAction(MemberBean mb,HttpSession session) {
		MemberBean loginInfo = mdao.getMember(mb);
		session.setAttribute("loginInfo", loginInfo);
		return getPage;
	}
}












