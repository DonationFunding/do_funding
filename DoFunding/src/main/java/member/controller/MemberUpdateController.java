package member.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import member.model.MemberBean;
import member.model.MemberDao;

@Controller
public class MemberUpdateController {
	private final String command = "update.mem";
	private final String getPage = "member_updateForm";
	private String gotoPage = "member_loginForm";
	@Autowired
	MemberDao mdao;
	
	@RequestMapping(value = command , method = RequestMethod.GET)
	public String doAction() {
		return getPage;
	}

	@RequestMapping(value = command , method = RequestMethod.POST)
	public String doAction(MemberBean membean,HttpServletRequest request,HttpServletResponse response) {
		response.setContentType("text/html; charset=UTF-8");
		int cnt = mdao.updateMember(membean);
		
		
		PrintWriter pw=null;
		if(cnt > 0) {
			try {
				pw = response.getWriter();
			} catch (IOException e) {
				e.printStackTrace();
			}
			pw.println("<script> alert('패스워드를 변경하였습니다.');</script>");
			pw.flush();
			return gotoPage;
		}//if
		else {
			try {
				pw = response.getWriter();
			} catch (IOException e) {
				e.printStackTrace();
			}
			pw.println("<script> alert('패스워드를 변경하지 못했습니다. 잠시후 다시 시도해보시기 바랍니다. 문제가 반복될경우 고객센터로 연락주십시요.');</script>");
			pw.flush();
			return getPage;
		}
	}
}
