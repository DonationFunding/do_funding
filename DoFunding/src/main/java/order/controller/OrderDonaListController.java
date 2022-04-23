package order.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import member.model.MemberBean;
import orderdetail.model.DonationBean;
import orderdetail.model.OrderDetailDao;
import utility.Paging;

@Controller
public class OrderDonaListController {
	
	private final String command = "dona.ord";
	private final String getPage = "order_donaList";

	@Autowired
	private OrderDetailDao orderDetailDao; 
	

	@RequestMapping(value = command)
	public  ModelAndView doAction(
			@RequestParam(value="whatColumn", required=false) String whatColumn,
			@RequestParam(value="keyword", required=false) String keyword,
			@RequestParam(value="pageNumber", required=false) String pageNumber,
			HttpSession session,HttpServletRequest request) {
		MemberBean loginInfo = (MemberBean)session.getAttribute("loginInfo");
		
		int totalCount=orderDetailDao.donaTotalCount(loginInfo.getNo());
		System.out.println("totalCount:"+totalCount);
		String url=request.getContextPath()+command;
		Paging pageInfo=new Paging(pageNumber, null, totalCount, url, whatColumn, keyword);
			
		List<DonationBean> donaList = orderDetailDao.getDonaList(pageInfo,loginInfo.getNo());
	
		ModelAndView mav = new ModelAndView();
		mav.addObject("donaList",donaList);
		mav.addObject("totalCount",totalCount);
		mav.addObject("pageInfo",pageInfo);		
		mav.setViewName(getPage);
		return mav;
	}	
}
