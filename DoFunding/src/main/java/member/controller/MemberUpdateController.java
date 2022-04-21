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
	private String gotoPage = "redirect:memberInfo.mem";
	
	@Autowired
	MemberDao mdao;
	
	@RequestMapping(value = command , method = RequestMethod.GET)
	public ModelAndView doAction(MemberBean membean) {
		MemberBean loginInfo = mdao.getLoginInfo(membean);
		ModelAndView mav = new ModelAndView();
		mav.addObject("loginInfo", loginInfo);
		mav.setViewName(getPage);
		return mav;
	}

	@RequestMapping(value = command , method = RequestMethod.POST)
	public String doAction(MemberBean membean,HttpServletRequest request,HttpServletResponse response,HttpSession session) {
		response.setContentType("text/html; charset=UTF-8");
		int cnt = mdao.updateMember(membean);
		PrintWriter pw=null;
		if(cnt > 0) {
			try {
				pw = response.getWriter();
			} catch (IOException e) {
				e.printStackTrace();
			}
			pw.println("<script> alert('수정이 완료 되었습니다');</script>");
			pw.flush();
			String destination = (String)session.getAttribute("destination");
			if(destination ==null) {
				return gotoPage;
			}
			else {
				
				return destination;					
			}
		}//if
		else {
			try {
				pw = response.getWriter();
			} catch (IOException e) {
				e.printStackTrace();
			}
			pw.println("<script> alert('정보수정에 실패했습니다.');</script>");
			pw.flush();
			return getPage;
		}
	}
}
