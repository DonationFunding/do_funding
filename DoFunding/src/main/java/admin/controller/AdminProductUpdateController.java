package admin.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import category.model.CategoryBean;
import category.model.CategoryDao;
import product.model.OptionBean;
import product.model.ProductBean;
import product.model.ProductDao;

@Controller
public class AdminProductUpdateController {

	private final String command ="/admin_prd_update.ad";
	private String getPage ="admin_prd_updateForm";
	private String gotoPage="redirect:/admin_prd_list.ad";

	
	@Autowired
	private ProductDao productDao;
	
	@Autowired
	private CategoryDao categoryDao;
	
	@Autowired
	ServletContext servletContext;
	
	@RequestMapping(value=command, method = RequestMethod.GET)
	public ModelAndView doAction(
			@RequestParam(value="p_num", required = true) String num,
			@RequestParam(value="pageNunber", required = false) String pageNumber
			) {
		//pageNumber �޴µ��� false�� String���� �ȹ����� �����߻���.
		int p_num=Integer.parseInt(num);
		List<CategoryBean> c_list = categoryDao.categoryAllByProduct();
		List<OptionBean> o_list = productDao.optionAllByProduct(p_num);
		System.out.println(o_list.size());
		ProductBean Bean = productDao.getupdateProduct(p_num);
		ModelAndView mav = new ModelAndView();
		mav.addObject("categoryList", c_list);
		mav.addObject("optionList", o_list);
		mav.addObject("productBean", Bean);	
		mav.addObject("pageNumber", pageNumber);
		mav.setViewName(getPage); 

		return mav;
	}
	
	@RequestMapping(value=command, method=RequestMethod.POST) 
	 public ModelAndView doAction(
			 @RequestParam(value="pageNunber", required = false) String pageNumber,
			 @ModelAttribute("productBean") @Valid ProductBean Bean, 
			 BindingResult result) {	 
		 ModelAndView mav = new ModelAndView();
		 mav.addObject("pageNumber", pageNumber);
		 List<CategoryBean> list = categoryDao.categoryAllByProduct();
		 List<OptionBean> o_list = productDao.optionAllByProduct(Bean.getP_num());
		 
		 if(result.hasErrors()) {
			 System.out.println(result.getErrorCount());	//6
			 mav.addObject("categoryList", list);
			 mav.addObject("optionList", o_list);
			 mav.setViewName(getPage);
			 return mav;
		 }
		 
		 
		 Bean.setP_point(Math.round(Bean.getP_origin_price()/1000)*10);
		 int cnt = productDao.updateProduct(Bean); //update��
		 if(cnt > 0) {
			 int item_no=productDao.getP_num();
			 Bean.setOption_item_no(item_no);
			 //�ɼ� �߰��ϱ� �� ���� �ɼ� ����
			 productDao.itemOptionDelete(Bean.getOption_item_no());
			 //�ɼ��߰��κ�
			 for (int i = 0; i < Bean.getItem_option().length; i++) {
				 String itemOptionContent = Bean.getItem_option()[i];	//�ɼ� 1�� ��
				 System.out.println("itemOptionContent:"+itemOptionContent);
				 Map<String, Object> map = new HashMap<String, Object>();
				 map.put("item_option", itemOptionContent);
				 map.put("option_item_no", Bean.getOption_item_no());
				 productDao.itemOptionInsert(map);
				} 
			 
			 //���� ���� �̹��� ���� �ʿ�
			 
			 //���� �߰� �κ�
			 String uploadPath = servletContext.getRealPath("/resources/images");
			 MultipartFile multi = Bean.getUpload();
			 File f = new File(uploadPath+"\\" + Bean.getP_image());
			 
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
			 mav.addObject("categoryList", list);
			 mav.setViewName(getPage);
		 }
				
		 return mav; 
	 }

}