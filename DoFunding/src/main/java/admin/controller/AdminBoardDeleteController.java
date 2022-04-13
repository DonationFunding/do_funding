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
	private String getPage="admin_bd_deleteForm";
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
		
		if(passwd.equals("")){	//입력 누락
			try {
				pw=response.getWriter();
			} catch (IOException e) {
				e.printStackTrace();
			}
			pw.println("<script> alert('비밀번호 입력 누락');</script>");
			pw.flush();
			request.setAttribute("bdBean", bdBean);
			request.setAttribute("pageNumber", pageNumber);
			return getPage;
		}
		else
		{
			int cnt=boardDao.deleteArticle(bdBean,passwd);			
			try {
				pw=response.getWriter();
			} catch (IOException e) {
				e.printStackTrace();
			}
			if(cnt>0) {		//삭제성공
				return gotoPage+"?pageNumber="+pageNumber;
			}
			
			if(cnt == -2) {	//비밀번호가 일치 않하면
				pw.println("<script> alert('작성글의 비밀번호와 일치하지 않습니다.');</script>");
				pw.flush();
			}
			else {
				pw.println("<script> alert('글 수정이 실패했습니다');</script>");
				pw.flush();
			}	
			request.setAttribute("bdBean", bdBean);
			request.setAttribute("pageNumber", pageNumber);
			return getPage;
		}
			

	}	
	
	
}
