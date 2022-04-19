package admin.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import board.model.BoardBean;
import board.model.BoardDao;

@Controller
public class AdminBoardDeleteController {
	
	private final String command="/admin_bd_delete.ad";
	private String getPage="redirect:/admin_bd_list.ad";
	private String gotoPage="redirect:/admin_bd_list.ad";
	
	@Autowired
	private BoardDao boardDao;

	@RequestMapping(value=command)
	public String doAction(
			@RequestParam(value="pageNumber") String pageNumber,
			BoardBean bdBean,
			HttpServletRequest request,
			HttpServletResponse response
			) {	
		String passwd=bdBean.getB_passwd();
		response.setContentType("text/html; charset=UTF-8");
		
		PrintWriter pw =null;	
		
		int cnt=boardDao.deleteArticle(bdBean,passwd);			
			try {
				pw=response.getWriter();
			} catch (IOException e) {
				e.printStackTrace();
			}
			if(cnt>0) {		//
				return gotoPage+"?pageNumber="+pageNumber;
			}	
			if(cnt == -2) {	//
				pw.println("<script> alert('�ۼ����� ��й�ȣ�� ��ġ���� �ʽ��ϴ�.');</script>");
				pw.flush();
			}
			else {
				pw.println("<script> alert('�� ������ �����߽��ϴ�');</script>");
				pw.flush();
			}	
			request.setAttribute("bdBean", bdBean);
			request.setAttribute("pageNumber", pageNumber);
			return getPage;
		
			

	}	
	

	
}
