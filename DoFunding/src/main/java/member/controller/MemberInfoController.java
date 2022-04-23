package member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import member.model.MemberDao;

@Controller
public class MemberInfoController {
	private final String command = "memberInfo.mem";
	private final String getPage = "member_detailView";
	
	@Autowired
	MemberDao mdao;
	
	@RequestMapping(value = command,method = RequestMethod.GET)
	public String doAction() {
		
		return getPage;
	}
	
	
}
