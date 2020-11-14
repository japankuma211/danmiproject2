package com.danmi.test.login.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import com.danmi.test.user.service.UserVO;

public interface LoginService {
	
  
	/*public LoginVO login(LoginVO loginVO) throws Exception;*/
  
	public void loginRecord(UserVO vo);

	public List loginList(String id);

	public List<LoginVO> allLoginRecord( Map<String, String> map) throws Exception;  
	
	
}
