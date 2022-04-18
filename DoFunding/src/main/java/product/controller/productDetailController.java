package product.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import like.model.LikeBean;
import like.model.LikeDao;
import member.model.MemberBean;
import product.model.OptionBean;
import product.model.ProductBean;
import product.model.ProductDao;

@Controller
public class productDetailController {

	private final String command = "/detail.prd";
	private String getPage = "product_detailView"; 
	
	@Autowired
	@Qualifier("myProductDao")
	private ProductDao productDao;	
		
	@Autowired	
	@Qualifier("myLikeDao")
	private LikeDao likeDao; 
	
	@RequestMapping(value = command ,method = RequestMethod.GET)
	public String doAction(
			@RequestParam(value = "p_num",required = true) int p_num,
			@RequestParam(value = "pageNumber",required = true) String pageNumber,
			Model model,HttpSession session) {
			MemberBean loginInfo=(MemberBean)session.getAttribute("loginInfo");
			int check = 0;
			
			if(loginInfo != null) { //로그인 인포가 null 아니면
				LikeBean likebean = new LikeBean();
				likebean.setM_no(loginInfo.getNo());
				likebean.setP_num(p_num);
			
				check = likeDao.checkLike(likebean);
			
				if(check == -1) {
					check = 0;
				}
			}
		
		
		ProductBean p_product = productDao.getProduct(p_num);
		List<OptionBean> o_list = productDao.optionAllByProduct(p_num);
		
		model.addAttribute("optionList", o_list);
		model.addAttribute("productBean", p_product);
		model.addAttribute("pageNumber", pageNumber);
		model.addAttribute("cnt", check);
		return getPage;
	}
	
	@RequestMapping(value = command ,method = RequestMethod.POST)
	public String doAction(
			@RequestParam(value = "p_num",required = true) int p_num,
			@RequestParam(value = "pageNumber",required = true) String pageNumber,
			@RequestParam(value = "cnt",required = false) String cnt,
			Model model,HttpSession session) {
		MemberBean loginInfo=(MemberBean)session.getAttribute("loginInfo");
		//Map<String,String> map=new HashMap<String,String>();
		//map.put("p_num",Integer.toString(p_num));
		//map.put("m_no",Integer.toString(loginInfo.getNo()));
		//DipBean bean=null;
		int check = 0;
		LikeBean likebean = new LikeBean();
		likebean.setM_no(loginInfo.getNo());
		likebean.setP_num(p_num);
		//int cnt = 0;
		if(loginInfo != null) { //로그인 했냐 안했냐
			check = likeDao.checkLike(likebean);	
			if(check == -1) {
				likeDao.insertLike(likebean); 
			}
			else {
				likebean.setL_check(Integer.parseInt(cnt));
				check = likeDao.updateLike(likebean);
			}
		}
		ProductBean p_product = productDao.getProduct(p_num);
		List<OptionBean> o_list = productDao.optionAllByProduct(p_num);
		 
		model.addAttribute("optionList", o_list);
		model.addAttribute("productBean", p_product);
		model.addAttribute("pageNumber", pageNumber);
		model.addAttribute("cnt", check);
		
		return getPage;
	}
}
