package member.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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
public class MemberFindIdController {
	private final String command = "findid.mem";
	private final String getPage = "member_findId";
	private String gotoPage = "member_findPassword";
	@Autowired
	MemberDao mdao;
	
	@RequestMapping(value = command,method = RequestMethod.GET)
	public String doAction() {
		return getPage;
	}
	
	@RequestMapping(value = command,method = RequestMethod.POST)
	public  String doAction(@Valid MemberBean membean,BindingResult result,HttpSession session,HttpServletResponse response,HttpServletRequest request) {
		MemberBean findid = mdao.findId(membean);
		request.setAttribute("id", findid.getId());
		return gotoPage;
	}
	
	
	
	
	
	
	
}
