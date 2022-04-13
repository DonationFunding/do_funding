package board.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Timestamp;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import board.model.BoardBean;
import board.model.BoardDao;

@Controller
public class BoardWriteController {

	private final String command="/insert.bd";
	private String getPage="board_writeForm";
	private String gotoPage="redirect:/list.bd";
	
	@Autowired
	private BoardDao boardDao;

	
	@RequestMapping(value=command,method = RequestMethod.GET)
	public String doAction(HttpSession session) {	
		System.out.println("loginInfo:"+session.getAttribute("loginInfo")); // null
			
		if(session.getAttribute("loginInfo") == null) { // �α��� ���� ����
			session.setAttribute("destination", "redirect:/login.mem");

			return "redirect:/login.mem"; 

		}
		else {// �α��� �� ����
			return getPage;// writeForm.jsp
		}	
	}
	
	//writeForm.jsp post��� writeArticle.bv
	@RequestMapping(value=command,method = RequestMethod.POST)
	public String doAction(
			// @ModelAttribute("article") @Valid ��ũ��Ʈ�� ������ 
			BoardBean article,
			HttpServletRequest request,
			HttpServletResponse response) {
		//writer/subject/email/content/password/Reg_date/Ip
		response.setContentType("text/html; charset=UTF-8");			
		article.setB_reg_date(new Timestamp(System.currentTimeMillis()));

		int cnt=boardDao.insertArticle(article);
		PrintWriter pw =null;
		if(cnt>0){
			return gotoPage;	
		}
		else{	
			try {
				pw=response.getWriter();
			} catch (IOException e) {
				e.printStackTrace();
			}
			pw.println("<script> alert('�� �ۼ��� �����߽��ϴ�');</script>");
			pw.flush();
			return getPage;
		}
		
	}
	
	
	
	
}
