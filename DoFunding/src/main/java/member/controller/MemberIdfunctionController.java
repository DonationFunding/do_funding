package member.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
<<<<<<< HEAD
import org.springframework.web.bind.annotation.RequestParam;
=======
import org.springframework.web.bind.annotation.ResponseBody;
>>>>>>> refs/remotes/origin/do-pms2

import member.model.MemberBean;
import member.model.MemberDao;

@Controller
public class MemberIdfunctionController {
	private final String command = "/idfunction.mem";
	private final String getPage = "member_insertForm";
	@Autowired
	MemberDao mdao;
	
@ResponseBody
	@RequestMapping(value = command,method = RequestMethod.GET)
	public String doAction(
			MemberBean mb ,
			HttpServletRequest request,HttpServletResponse response) {
		response.setContentType("text/html; charset=UTF-8");
		System.out.println("mb:"+mb.getId());
		MemberBean membean = mdao.getLoginInfo(mb);
		System.out.println("membean:"+membean);
		String data;
		if(membean == null) {
<<<<<<< HEAD
			try {
				pw = response.getWriter();
			} catch (IOException e) {
				e.printStackTrace();
			}
			pw.println("<script> alert('회원가입 가능합니다');</script>");
			request.setAttribute("memBean", mb);
			request.setAttribute("flag", true);
			pw.flush();
			return getPage;
=======
//			try {
//				pw = response.getWriter();
//			} catch (IOException e) {
//				e.printStackTrace();
//			}
//			pw.println("<script> alert('회원가입 가능합니다');</script>");
//			request.setAttribute("id", mb.getId());
//			request.setAttribute("flag", true);
//			pw.flush();
			data = "false";
			request.setAttribute("data", data);
			System.out.println("data"+data);
			return data;
>>>>>>> refs/remotes/origin/do-pms2
		}//if
		else {
<<<<<<< HEAD
			try {
				pw = response.getWriter();
			} catch (IOException e) {
				e.printStackTrace();
			}
			pw.println("<script> alert('중복된 아이디가 존재 합니다.');</script>");
			request.setAttribute("memBean", mb);
			pw.flush();
			return getPage;
=======
//			try {
//				pw = response.getWriter();
//			} catch (IOException e) {
//				e.printStackTrace();
//			}
//			pw.println("<script> alert('중복된 아이디가 존재 합니다.');</script>");
//			pw.flush();
			data = "true";
			request.setAttribute("data", data);
			System.out.println("data"+data);
			return data;
>>>>>>> refs/remotes/origin/do-pms2
		}
	}
	
}
