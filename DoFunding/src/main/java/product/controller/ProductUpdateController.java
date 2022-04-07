package product.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import product.model.ProductBean;
import product.model.ProductDao;

@Controller
public class ProductUpdateController {
	
	private final String command = "update.prd";
	private String getPage = "productUpdateForm"; 
	private String gotoPage = "redirect:product_list"; 
	//admin에서 처리할때는 따로 경로 지정 해줘야함.
	//private String gotoPage1 = "redirect:product_list.admin"; 
	
	@Autowired
	@Qualifier("myProductDao")
	private ProductDao productDao;
	
	@Autowired
	ServletContext servletContext;	
	
	@RequestMapping(value=command,method = RequestMethod.GET)
	public String doAction(HttpSession session) {

		//어차피 admin만 수정하잔아?
//		System.out.println("loginInfo:"+session.getAttribute("loginInfo")); // null
//		
//		if(session.getAttribute("loginInfo") == null) { // 로그인 안한 상태
//			session.setAttribute("destination", "redirect:/insert.prd");
//			return "redirect:/loginForm.mem";  // MemberLoginController 
//		}
//		else {// 로그인 한 상태	관리자만 수정가능
//			return getPage; // productInsertForm.jsp
//		}
		return getPage;

	}
	@RequestMapping(value=command,method = RequestMethod.POST)
	public ModelAndView doAction(
			@ModelAttribute("p_product") @Valid ProductBean bean, 
			BindingResult result ) {
		 
		ModelAndView mav = new ModelAndView();
		 if(result.hasErrors()) {
			 mav.setViewName(getPage);
			 return mav;
		 }
		 
		 System.out.println("RealPath(/):"+servletContext.getRealPath("/"));
		 System.out.println("RealPath(/resources):"+servletContext.getRealPath("/resources"));
		 
		 String uploadPath = servletContext.getRealPath("/resources");
		 System.out.println(uploadPath+"\\" + bean.getP_image());
		 
		 MultipartFile multi = bean.getUpload();
		 
		 int cnt = productDao.insertProduct(bean); 
		 if(cnt > 0) {
			 File f = new File(uploadPath+"\\" + bean.getP_image());		 
			 try {
				multi.transferTo(f);
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
			 mav.setViewName(gotoPage);
		 }
		 else {
			 mav.setViewName(getPage);
		 }		
		 return mav; 
	}
}
