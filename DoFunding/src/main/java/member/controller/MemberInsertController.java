package member.controller;

import java.io.IOException;
import java.io.PrintWriter;

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
public class MemberInsertController {
	private final String command = "insert.mem";
	private final String getPage = "member_insertForm";
	private String gotoPage = "redirect:/login.mem";
	@Autowired
	MemberDao mdao;
	
	
	@RequestMapping(value = command,method = RequestMethod.GET)
	public String doAction() {
		return getPage;
	}
	
	@RequestMapping(value = command,method = RequestMethod.POST)
	public  ModelAndView doAction(MemberBean membean,HttpSession session,HttpServletResponse response) {
		response.setContentType("text/html; charset=UTF-8");
		ModelAndView mav = new ModelAndView();

		int cnt = mdao.insertMember(membean);
		if(cnt < 0) {
			System.out.println("회원가입 실패");
		}
		else {
			System.out.println("회원가입 성공");
		}
		mav.setViewName(gotoPage);
		return mav;
	}
}
