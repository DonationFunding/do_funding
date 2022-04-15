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
