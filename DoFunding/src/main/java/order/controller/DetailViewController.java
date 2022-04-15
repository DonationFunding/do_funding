package order.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import orderdetail.model.OrderDetailBean;
import orderdetail.model.CompositeDao;

@Controller
public class DetailViewController {
	private final String command = "detailView.ord";
	private final String getPage = "order_detailView";

	@Autowired
	private CompositeDao CompositeDao;
	
	@RequestMapping(value=command, method=RequestMethod.GET)
	public ModelAndView doAction(@RequestParam("od_no") int od_no) { 
		ModelAndView mav = new ModelAndView();
		List<OrderDetailBean> detailList = CompositeDao.detailList(od_no);
		
		System.out.println(detailList.get(0).getOd_pnum());
		System.out.println(detailList.get(0).getOd_pname());
		
		mav.addObject("detailList", detailList);
		mav.addObject("od_no", od_no);
		mav.setViewName(getPage);
		
		return mav;
	}

}
