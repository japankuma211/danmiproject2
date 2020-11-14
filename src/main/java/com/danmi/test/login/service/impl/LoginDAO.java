package com.danmi.test.login.service.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Repository;

import com.danmi.test.login.service.LoginVO;
import com.danmi.test.login.web.LoginController;
import com.danmi.test.user.service.UserVO;

import egovframework.rte.psl.dataaccess.EgovAbstractMapper;

@Repository("loginDAO")
public class LoginDAO extends EgovAbstractMapper{

	static Logger logger = Logger.getLogger(LoginDAO.class);

	/*public LoginVO loginById(LoginVO loginVO) throws Exception{
		logger.debug("----------- DAO : loginById call");
		LoginVO vo = selectOne("loginMapper.loginById", loginVO);
		return vo;  
	}*/

	public void loginRecord(UserVO vo) {
		logger.debug("----------- DAO : loginRecord call");
		insert("loginMapper.loginRecord", vo);  
		
	}

	public List loginList(String id) {
		logger.debug("----------- DAO : loginList call");
		/*List list=selectList("loginMapper.loginList", id);
		System.out.println(list+"list정보");*/
		return selectList("loginMapper.loginList", id);
		
	}

	public List<LoginVO> allLoginRecord( Map<String, String> map) throws Exception{
		//TODO Auto-generated method stub
		
		logger.debug("----------- DAO : allLoginRecord call");
		
		return selectList("loginMapper.allLoginRecord",map);
	}




	
	
	
	
}
