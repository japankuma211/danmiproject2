package com.danmi.test.user.service;

import java.util.List;
import java.util.Map;

import com.danmi.test.login.service.LoginVO;

public interface UserService {
	
	void addUser(UserVO vo) throws Exception;

	UserVO selectMember(String id) throws Exception;

	UserVO selectUserInfo(String id) throws Exception;

	int updateUser(UserVO userVO) throws Exception;

	List userList(Map<String, String> map) throws Exception;

	void updateUserPermission(UserVO userVO) throws Exception;

	void userDelete(String id) throws Exception;

	void updateUseYn(String id) throws Exception;  
}
  