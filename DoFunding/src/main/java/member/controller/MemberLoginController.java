package member.controller;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import member.model.MemberBean;
import member.model.MemberDao;

@Controller
public class MemberLoginController {
	private final String command = "login.mem";
	private final String getPage = "loginForm";
	private String gotoPage = "redirect:/list.prd";
	@Autowired
	MemberDao mdao;
	
	
	@RequestMapping(value = command,method = RequestMethod.GET)
	public String doAction() {
		return getPage;
	}
	
	@RequestMapping(value = command,method = RequestMethod.POST)
	public String doAction(MemberBean mb,HttpSession session) {
		MemberBean loginInfo = mdao.getLoginInfo(mb);
		session.setAttribute("loginInfo", loginInfo);
		return gotoPage;
	}
}
