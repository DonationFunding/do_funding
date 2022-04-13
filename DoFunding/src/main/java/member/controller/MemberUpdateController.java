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
	public ModelAndView doAction(MemberBean membean) {
		MemberBean loginInfo = mdao.getLoginInfo(membean);
		ModelAndView mav = new ModelAndView();
		mav.addObject("loginInfo", loginInfo);
		mav.setViewName(getPage);
		return mav;
	}

	@RequestMapping(value = command , method = RequestMethod.POST)
	public String doAction(MemberBean membean,HttpServletRequest request,HttpServletResponse response) {
		int cnt = mdao.updatePassword(membean);
		PrintWriter pw=null;
		if(cnt > 0) {
			try {
				pw = response.getWriter();
			} catch (IOException e) {
				e.printStackTrace();
			}
			pw.println("<script> alert('�н����带 �����Ͽ����ϴ�.');</script>");
			pw.flush();
			return gotoPage;
		}//if
		else {
			try {
				pw = response.getWriter();
			} catch (IOException e) {
				e.printStackTrace();
			}
			pw.println("<script> alert('�н����带 �������� ���߽��ϴ�. ����� �ٽ� �õ��غ��ñ� �ٶ��ϴ�. ������ �ݺ��ɰ�� �����ͷ� �����ֽʽÿ�.');</script>");
			pw.flush();
			return getPage;
		}
	}
}
