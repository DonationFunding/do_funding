package member.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import member.model.MemberBean;
import member.model.MemberDao;

@Controller
public class MemberUpdateController {
	private final String command = "/update.mem";
	private final String getPage = "member_updateForm";
	private String gotoPage = "member_detailView";
	
	@Autowired
	MemberDao mdao;
	
	@RequestMapping(value = command , method = RequestMethod.GET)
	public ModelAndView doAction(MemberBean membean) {
		MemberBean loginInfo;
		ModelAndView mav = new ModelAndView();
		if(membean == null) {
			loginInfo = mdao.getLoginInfo(membean);
			mav.addObject("loginInfo", loginInfo);
		}
		mav.setViewName(getPage);
		return mav;
	}

	@RequestMapping(value = command , method = RequestMethod.POST)
	public ModelAndView doAction(MemberBean membean,HttpServletRequest request,HttpServletResponse response,HttpSession session) {
		response.setContentType("text/html; charset=UTF-8");
		System.out.println("update.mem(post)"+membean.getId());
		System.out.println("update.mem(post)"+membean.getPassword());
		ModelAndView mav=new ModelAndView();
		int cnt = mdao.updateMember(membean);
		String destination = (String)session.getAttribute("destination");
		if(destination ==null) {
			mav.setViewName(gotoPage);
			return mav;
		}
		else {
			mav.setViewName(destination);
			return mav;					
		}
	}
}
