package com.danmi.test.user.web;



import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.faces.application.ResourceDependencies;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springmodules.validation.commons.DefaultBeanValidator;

import com.danmi.test.user.service.UserService;
import com.danmi.test.user.service.UserVO;

import egovframework.rte.fdl.property.EgovPropertyService;


@Controller
public class UserController {

	static Logger logger = Logger.getLogger(UserController.class);
	      
	@Resource(name = "userService")
	private UserService userService;

	//회원가입 페이지 이동
	@RequestMapping(value = "/addUserPage.do")
	public String addUserPage(Model model) throws Exception{
		
		logger.debug("----------- /addUserPage.do : start");
		
		return "/common/addMember";
	}
	
	//회원가입
	@RequestMapping(value = "/addUser.do")
	public String addUser(@ModelAttribute("userVO") UserVO userVO, Model model) throws Exception{
		
		
		logger.debug("----------- /addUser.do : start");
		
		/*UserVO userVO = new UserVO(); */
		userVO.setId(userVO.getId());
		userVO.setUserNm(userVO.getUserNm());
		userVO.setUserNick(userVO.getUserNick());
		userVO.setPassword(userVO.getPassword());
		userVO.setEmail(userVO.getEmail());
		userVO.setHphone(userVO.getHphone());
		userVO.setPhone(userVO.getPhone());
		userVO.setZipcode(userVO.getZipcode());
		userVO.setAddr1(userVO.getAddr1());
		userVO.setAddr2(userVO.getAddr2());
		userVO.setBirthday(userVO.getBirthday());
		
		userService.addUser(userVO);
		logger.info(userVO.toString());
		model.addAttribute("msg", "ok");
        
		logger.debug("----------- /addUser.do : end");
		return "index";  
		
	}
	
	//회원정보 수정페이지
	@RequestMapping(value = "/userInfo.do")
	public ModelAndView userInfo(String id) throws Exception{
		  
		logger.debug("----------- /userInfo.do : start");
		
		ModelAndView mav = new ModelAndView();
		UserVO vo = userService.selectUserInfo(id); 
		
		mav.addObject("userInfo", vo);
		mav.setViewName("/myPage/userInfo");
		
		logger.debug("----------- /userInfo.do : end");
		return mav;

	}
	
	//회원정보 수정
	@RequestMapping(value = "/updateUser.do")
	public ModelAndView updateUser(UserVO userVO, 
						  Model model,
						  HttpSession session,
						  RedirectAttributes rAttr) throws Exception{
		
		logger.debug("----------- /updateUser.do : start");
		
		ModelAndView mav = new ModelAndView();
		int result = 0;
		
		result = userService.updateUser(userVO);
		
		if(result == 1) {
			mav.addObject("result", result);
			mav.addObject("userInfo", userVO);
			mav.setViewName("myPage/userInfo");
		}else {
			
			rAttr.addAttribute("result", result);
			mav.setViewName("index");
		}
		
		logger.debug("----------- /updateUser.do : end");
		return mav;
		
	}
	
	//관리자 전체 회원정보 조회 페이지
	@RequestMapping(value = "/allUserList.do")
	public String userList(Model model, String keywordType, String keyword,String msg) throws Exception{
		
		logger.debug("----------- /allUserList.do : start");
		
		//System.out.println("keywordtype"+keywordType);
		Map<String, String> map =new HashMap<String, String>();
		map.put("keywordType", keywordType);
		map.put("keyword", keyword);
		List<UserVO> allUserList = userService.userList(map);
		
		System.out.println("msg는?"+msg);
		
		model.addAttribute("allUserList", allUserList);
		
		if(msg != null && msg.equals("ok")) {
		  model.addAttribute("msg", "ok");
		}
		
		logger.debug("----------- /allUserList.do : end");
		
		return "/admin/allUserList";
		
		
	}
	
	@RequestMapping(value = "/updateUseYn.do")
	public String updateUseYn (String h_id ,ModelMap map) throws Exception {
		
		logger.debug("----------- /updateUseYn.do : start");
		
		userService.updateUseYn(h_id);
		
		return "redirect:/allUserList.do?msg=ok";
	}
	
	
	@RequestMapping(value = "/updateUserPermission.do")
	public String updateUserPermission(UserVO userVO ,ModelMap model) throws Exception{
		logger.debug("----------- UserController /updateUserPermission.do : start");
		
		userService.updateUserPermission(userVO);
		
		model.addAttribute("msg", "ok");
		
		return "redirect:/allUserList.do";
	}
	
	@RequestMapping(value ="/userDelete.do")
	public String userDelete(String h_id ,ModelMap model ) throws Exception{
		logger.debug("----------- UserController /userDelete.do : start");
		
		ModelAndView mav =new ModelAndView();
		
		userService.userDelete(h_id);
		
		model.addAttribute("msg", "ok");
		
		return "redirect:/allUserList.do";
	}

}

