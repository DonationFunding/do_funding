package board.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import board.model.BoardBean;
import board.model.BoardDao;

@Controller
public class BoardUpdateController {

	private final String command="/update.bd";
	private String getPage="board_updateForm";
	private String gotoPage="redirect:/content.bd";
	
	@Autowired
	private BoardDao boardDao;

	//content.jsp get��� updateForm.bv
	@RequestMapping(value=command,method = RequestMethod.GET)
	public String doAction(
			@RequestParam(value="pageNumber")String pageNumber,
			BoardBean bdBean,
			HttpServletRequest request
			) {	
		BoardBean detail=boardDao.oneSelect(bdBean);
		System.out.println(detail.getB_subject()+"controller");
		request.setAttribute("bdBean", detail);
		request.setAttribute("pageNumber", pageNumber);
		return getPage;
	}	

	//boardList.jsp get��� writeArticle.bv
	@RequestMapping(value=command,method = RequestMethod.POST)
	public String doAction(
			// @ModelAttribute("article") @Valid ��ũ��Ʈ�� ������ 
			@RequestParam(value="pageNumber") String pageNumber,
			BoardBean bdBean,
			HttpServletRequest request,
			HttpServletResponse response,
			HttpSession session
			) {	
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter pw =null;	
		int cnt=boardDao.updateArticle(bdBean);
		if(cnt>0){	//������Ʈ ����
			return gotoPage+"?pageNumber="+pageNumber+"&b_num="+bdBean.getB_num();
		}
		else
		{
			try {
				pw=response.getWriter();
			} catch (IOException e) {
				e.printStackTrace();
			}
			if(cnt == -2) {	//��й�ȣ�� ��ġ ���ϸ�
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
		
}
