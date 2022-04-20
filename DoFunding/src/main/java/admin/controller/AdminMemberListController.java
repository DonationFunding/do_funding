package admin.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import member.model.MemberBean;
import member.model.MemberDao;

@Controller
public class AdminMemberListController {
	private final String command = "admin_mem_list.ad";
	private final String getPage = "admin_mem_list";
	private String gotoPage = "redirect:/list.prd";
	private List<MemberBean> memlist;
	
	@Autowired
	MemberDao mdao;
	
	@RequestMapping(value = command,method = RequestMethod.GET)
	public ModelAndView doAction() {
		ModelAndView mav = new ModelAndView();
		memlist = mdao.getAllMember();
		mav.addObject("memlist", memlist);
		mav.setViewName(getPage);
		return mav;
	}









}
