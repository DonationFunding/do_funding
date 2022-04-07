package product.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import product.model.ProductBean;
import product.model.ProductDao;

@Controller
public class ProductInsertController {

	private final String command = "insert.prd";
	private String getPage = "product_InsertForm";
	private String gotoPage="redirect:/list.prd";

	
	@Autowired
	private ProductDao pdao;
	
	@Autowired
	ServletContext servletContext;
	
	@RequestMapping(value=command, method = RequestMethod.GET)
	public String doAction(HttpSession session) {
			return getPage;
	}
	
	@RequestMapping(value=command, method=RequestMethod.POST) 
	 public ModelAndView doAction(@Valid ProductBean bean, BindingResult result) {
	 
		 ModelAndView mav = new ModelAndView();
		 if(result.hasErrors()) {
			 mav.setViewName(getPage);
			 return mav;
		 }
		 String uploadPath = servletContext.getRealPath("/resources");
		 
		 MultipartFile multi = bean.getUpload();

		 int cnt = pdao.insertProduct(bean); 
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
