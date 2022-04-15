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
	private String gotoPage = "redirect:findpw.mem";
	@Autowired
	MemberDao mdao;
	
	@RequestMapping(value = command,method = RequestMethod.GET)
	public String doAction() {
		return getPage;
	}
	
	@RequestMapping(value = command,method = RequestMethod.POST)
	public  String doAction(MemberBean membean,HttpServletRequest request,HttpServletResponse response) {
		response.setContentType("text/html; charset=UTF-8");
		MemberBean findid = mdao.findId(membean);
		PrintWriter pw=null;
		if(findid == null) {

			try {
				pw = response.getWriter();
			} catch (IOException e) {
				e.printStackTrace();
			}
			pw.println("<script> alert('해당 아이디가 존재하지 않습니다');</script>");
			pw.flush();
			return getPage;
		}//if
		return gotoPage+"?id="+findid.getId();
	}
	
	
	
	
	
	
	
}
