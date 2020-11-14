
package com.danmi.test.permission.web;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springmodules.validation.commons.DefaultBeanValidator;

import com.danmi.test.permission.service.PermissionService;
import com.danmi.test.permission.service.PermissionVO;

import egovframework.rte.fdl.property.EgovPropertyService;

@Controller("permissionController")
public class PermissionController {
	
	static final Logger logger = LoggerFactory.getLogger(PermissionController.class);
	
	@Resource( name = "permissionService")
	private PermissionService permissionService;

	
	@RequestMapping(value = "/permissionList.do")
	public String permissionList(ModelMap map,String msg) throws Exception {
		
		logger.debug("------------ permissionController : /permissionList.do start");
	    
		List<PermissionVO> list = permissionService.permissionList();
		
		map.addAttribute("permissionList", list);
		
		System.out.println(msg);
		
		if(msg != null && msg.equals("ok") ) {
		
			map.addAttribute("msg", "ok");
		}
		
		return "/admin/permissionList";
	}
	
	@RequestMapping(value = "/insertPermissionPage.do")
	public String insertPermissionPage(ModelMap map) throws Exception {
		
		logger.debug("------------ permissionController : /insertPermissionPage.do start");
        
		return "/admin/insertPermission";
	}
	
	
	@RequestMapping(value = "/insertPermission.do")
	public String insertPermission(PermissionVO permissionVO,ModelMap map) throws Exception {
		
		logger.debug("------------ permissionController : /insertPermission.do start");
		
		permissionService.insertPermission(permissionVO);
		
		return "redirect:/permissionList.do?msg=ok";
	}
	
	@RequestMapping(value = "/permissionInfo.do" )
	public String permissionInfo(String msg,int permissionId ,ModelMap map ) throws Exception {
		 
		logger.debug("------------ permissionController : /permissionInfo.do start");
		
	   if( msg != null &&  msg.equals("ok") ) {
			
			map.addAttribute("msg", "ok");
		}

		PermissionVO vo =permissionService.permissionInfo(permissionId);
		
		map.addAttribute("vo", vo);
	   
		return "/admin/permissionInfo";
	}
	
	
	@RequestMapping(value = "/deletePermission.do")
	public String deletePermission (int permissionId,ModelMap map) throws Exception {
		
		logger.debug("------------ permissionController : /deletePermission.do start");
		
		permissionService.deletePermission(permissionId);
		
		
		return "redirect:/permissionList.do?msg=ok";
	}
	
	
	@RequestMapping( value = "/updatePermission.do" )
	public String updatePermission (PermissionVO permissionVO ,ModelMap map) throws Exception {
		
		System.out.println("permissionId"+permissionVO.getPermissionId());
		
		logger.debug("------------ permissionController : /updatePermission.do start");
		
		permissionService.updatePermission(permissionVO);
	  
		return "redirect:/permissionInfo.do?msg=ok&permissionId="+permissionVO.getPermissionId();
	}
	
	@RequestMapping(value = "/adminIndex.do")
	public String adminIndex() throws Exception {
		
		logger.debug("------------ permissionController : /adminIndex.do start");
		
		return "/admin/adminIndex";
	}
	
	
	
/*	
	@RequestMapping(value = "/modifyPermissionPage.do" )
	public String modifyPermissionPage (int permissionId  ,ModelMap map) throws Exception {
		
		logger.debug("------------ permissionController : /permissionUpdate.do start");
        PermissionVO vo =permissionService.permissionInfo(permissionId);
		
		map.addAttribute("vo", vo);
	   
		return "/admin/modifyPermission";
	   
	}
	
	*/

}
