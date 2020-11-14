package com.danmi.test.login.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;  

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springmodules.validation.commons.DefaultBeanValidator;

import com.danmi.test.login.service.LoginService;
import com.danmi.test.login.service.LoginVO;
import com.danmi.test.user.service.UserService;
import com.danmi.test.user.service.UserVO;

import egovframework.rte.fdl.property.EgovPropertyService;

  
@Controller
public class LoginController {
	
	static Logger logger = Logger.getLogger(LoginController.class);
	
	@Resource(name = "loginService")
	private LoginService loginService;
	
	@Resource(name = "userService")
	private UserService userService;
	

	
	@RequestMapping(value = "/loginPage.do")
	public String loginUserPage(Model model) throws Exception{
		
		logger.debug("-------- /loginPage.do : start");
		
		logger.debug("-------- /loginPage.do : end");
		
		return "/myPage/loginForm";
		
		
	}
	 
	@RequestMapping(value = "/login.do")
	public ModelAndView login(String id, String password,
							  HttpServletRequest request,
							  HttpServletResponse response,  
							  HttpSession session,  
							  RedirectAttributes rAttr) throws Exception {
		
		logger.debug("-------- /login.do : start");
		/*System.out.println(id);
		System.out.println(password);*/
		ModelAndView mav = new ModelAndView();
		
		UserVO vo= userService.selectMember(id);
		 
		
		if(vo.getPassword().equals(password)) { //로그인
			session.setAttribute("id", id);
			session.setAttribute("isLogOn", true);
			session.setAttribute("permission", vo.getPermission());
			
			//UserVO에 담긴 vo를 가지고 t_login_hist테이블에 인서트
			loginService.loginRecord(vo);
			
			mav.setViewName("index");
		}else {
			rAttr.addAttribute("result", "loginFailed");
			mav.setViewName("redirect:/loginPage.do");
		}
		
		logger.debug("-------- /login.do : end");
		return mav;
	
	}  
	
	@RequestMapping(value = "/logout.do")
	public ModelAndView logout(HttpSession session) throws Exception {
		logger.debug("-------- /logout.do : start");
		session.invalidate();
		ModelAndView mav = new ModelAndView();
		mav.setViewName("index");
		logger.debug("-------- /logout.do : end");
		return mav;
	}
	
	//로그인내역
	@RequestMapping(value = "loginList.do")
	public ModelAndView loginList(String id,
								  HttpServletRequest request,
								  HttpServletResponse response)throws Exception{
		logger.debug("-------- /loginList.do : start");
		List loginRecord = loginService.loginList(id);	
		System.out.println("lsit정보"+loginRecord);
		ModelAndView mav = new ModelAndView();
		mav.addObject("loginRecord", loginRecord);
		mav.setViewName("/myPage/loginRecord");
		
		return mav;
		
	}
	
	@RequestMapping(value = "/adminPage.do")
	public String adminPage(ModelMap model) throws Exception{
		
		return "/admin/adminIndex";
	}

	 
	@RequestMapping("/allLoginRecord.do")
	public String allLoginRecord(ModelMap model ,String keywordType,String keyword) throws Exception{
		
		logger.debug("-------- /allLoginRecord.do : start");
		
        Map<String, String> map =new HashMap<String, String>();
		
		map.put("keywordType", keywordType);
		map.put("keyword", keyword);
		 List<LoginVO> list=loginService.allLoginRecord(map);
		 
		 model.addAttribute("loginRecord", list);
		 
		return "/admin/allLoginRecord";
	}
	
	
}
