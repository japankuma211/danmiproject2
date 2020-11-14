package com.danmi.test.login.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;  
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.danmi.test.login.service.LoginService;
import com.danmi.test.login.service.LoginVO;
import com.danmi.test.user.service.UserVO;
import com.danmi.test.user.service.impl.UserServiceImpl;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import egovframework.rte.fdl.idgnr.EgovIdGnrService;

@Service("loginService")
public class LoginServiceImpl extends EgovAbstractServiceImpl implements LoginService{
	
	private static final Logger LOGGER = LoggerFactory.getLogger(UserServiceImpl.class);
	
	@Resource(name = "loginDAO")
	private LoginDAO loginDAO;
	
	/** ID Generation */
	@Resource(name = "egovIdGnrService")
	private EgovIdGnrService egovIdGnrService;

	/*@Override
	public LoginVO login(LoginVO loginVO) throws Exception {
		LOGGER.debug("============== impl login call");
		return loginDAO.loginById(loginVO);
	}*/    

	@Override
	public void loginRecord(UserVO vo) {
		LOGGER.debug("============== impl loginRecord call");
		loginDAO.loginRecord(vo);
		
	}

	@Override
	public List loginList(String id) {
		LOGGER.debug("============== impl loginList call");
		/* List list=loginDAO.loginList(id);
        System.out.println("list정보"+list);*/
      return loginDAO.loginList(id);
	}

	@Override
	public List<LoginVO> allLoginRecord( Map<String, String> map) throws Exception {
		//TODO Auto-generated method stub
		
		LOGGER.debug("============== impl allLoginRecord call");
		
		return loginDAO.allLoginRecord(map);
	}

	
	 
	
	
	
	
}
