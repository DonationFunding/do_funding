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
public class MemberLoginController {
	private final String command = "login.mem";
	private final String getPage = "member_loginForm";
	private String gotoPage = "redirect:/list.prd";
	@Autowired
	MemberDao mdao;
	
	
	@RequestMapping(value = command,method = RequestMethod.GET)
	public String doAction() {
		return getPage;
	}
	
	@RequestMapping(value = command,method = RequestMethod.POST)
	public String doAction(MemberBean mb,HttpSession session,HttpServletResponse response) {
		
		MemberBean loginInfo = mdao.getLoginInfo(mb);
		
		System.out.println("loginInfo:" + loginInfo); //null or �ּ�
		PrintWriter pw=null;
		if(loginInfo == null) { // ���̵� �������

			try {
				pw = response.getWriter();
			} catch (IOException e) {
				e.printStackTrace();
			}
			pw.println("<script> alert('�ش� ���̵� �������� �ʽ��ϴ�');</script>");
			pw.flush();
			return getPage;
		}//if
		
		else { // ���̵� ����

			if(loginInfo.getPassword().equals(mb.getPassword())) { // �����ġ��
				session.setAttribute("loginInfo", loginInfo);
				
				
				String destination = (String)session.getAttribute("destination");
				if(destination ==null) {	//�������� ���ٸ� ����ȭ������
					return gotoPage;
				}
				else {//���������� ����.. �������� �ִٸ�
					return destination; //"redirect:/insert.prd"					
				}
			}
			else { // �����ġ ����
				try {
					pw=response.getWriter();
				} catch (IOException e) {
					e.printStackTrace();
				}
				pw.println("<script> alert('��й�ȣ�� �߸��Ǿ����ϴ�');</script>");
				pw.flush();
			}
			return getPage;
		}
	}
}
