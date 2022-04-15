package dip.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class DipListController {
	private final String command="/list.dip";
	private String getPage="dip_list";
	
	
	@RequestMapping(command)
	public ModelAndView doAction(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName(getPage);
		
		return mav;
		
	}
}

