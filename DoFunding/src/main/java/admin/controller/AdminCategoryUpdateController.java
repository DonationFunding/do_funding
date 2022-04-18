package admin.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import category.model.CategoryBean;
import category.model.CategoryDao;

@Controller
public class AdminCategoryUpdateController {

	    
	private final String command = "/admin_cate_update.ad";
	private String getPage = "admin_cate_updateForm";
	private String gotoPage = "redirect:/admin_cate_list.ad";
	
	@Autowired
	private CategoryDao cdao;
		
	@RequestMapping(value=command, method = RequestMethod.GET)
	public ModelAndView doAction(
			@RequestParam("cnum") String cnum,
			@RequestParam(value="pageNunber", required = false) String pageNumber
			) {	
		
		 CategoryBean cateBean = cdao.getCategory(Integer.parseInt(cnum)); 
		 ModelAndView mav = new ModelAndView();
		 mav.addObject("cateBean", cateBean);
		 mav.addObject("pageNumber", pageNumber);
		 mav.setViewName(getPage);
	     return mav;
	}

	@RequestMapping(value=command, method = RequestMethod.POST)
	public ModelAndView doAction(
			@RequestParam(value="pageNumber", required = false) int pageNumber,			
			@ModelAttribute("cateBean") @Valid CategoryBean bean,
			BindingResult result
			){
		
	ModelAndView mav = new ModelAndView();	
		
	if(result.hasErrors()) {
	  mav.setViewName(getPage);
	  return mav; 
	}	   		
	   int cnt = cdao.updateCategory(bean);
	   System.out.println("update cnt:"+cnt);
	   
	    mav.setViewName(gotoPage);
	    return mav; 
		}
	}



