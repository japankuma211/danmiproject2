package com.danmi.test.login.service.impl;

import java.util.List;

import com.danmi.test.login.service.LoginVO;
import com.danmi.test.user.service.UserVO;

import egovframework.rte.psl.dataaccess.mapper.Mapper;

@Mapper("loginMapper")
public interface LoginMapper {
	
	LoginVO selectOne(LoginVO loginVO) throws Exception;
	
	void loginRecord(UserVO vo);
   
	List<LoginVO> allLoginRecord() throws Exception;
}
