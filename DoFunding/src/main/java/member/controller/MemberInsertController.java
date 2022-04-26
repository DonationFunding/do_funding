package member.controller;


import java.io.IOException;
import java.io.PrintWriter;

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
public class MemberInsertController {
	private final String command = "/insert.mem";
	private final String getPage = "member_insertForm";
	private String gotoPage = "redirect:/login.mem";
	@Autowired
	MemberDao mdao;
	
	
	@RequestMapping(value = command,method = RequestMethod.GET)
	public String doAction() {
		return getPage;
	}
	
	@RequestMapping(value = command,method = RequestMethod.POST)
	public  ModelAndView doAction(MemberBean memBean,HttpSession session,HttpServletResponse response) {
		response.setContentType("text/html; charset=UTF-8");
		ModelAndView mav = new ModelAndView();
		int cnt = mdao.insertMember(memBean);

		PrintWriter pw=null;
		try {
			pw = response.getWriter();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(cnt < 0) {
			System.out.println("회원가입 실패");
<<<<<<< HEAD
			pw.println("<script> alert('회원가입에 실패했습니다. 내용을 다시 확인해 주세요.');</script>");
			mav.addObject("memBean", memBean);
			mav.setViewName(getPage);
			pw.flush();
=======
			mav.setViewName(gotoPage+"?cnt="+cnt);
>>>>>>> refs/remotes/origin/do-pms2
		}
		else {
			System.out.println("회원가입 성공");
<<<<<<< HEAD
			mav.setViewName(gotoPage);
=======
			mav.setViewName(gotoPage+"?cnt="+cnt);
>>>>>>> refs/remotes/origin/do-pms2
		}
<<<<<<< HEAD
=======
		System.out.println(mav.getViewName());
>>>>>>> refs/remotes/origin/do-pms2
		return mav;
	}
}
