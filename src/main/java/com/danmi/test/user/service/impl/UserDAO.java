package com.danmi.test.user.service.impl;

import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Repository;

import com.danmi.test.login.service.LoginVO;
import com.danmi.test.user.service.UserVO;
import com.danmi.test.user.web.UserController;

import egovframework.rte.psl.dataaccess.EgovAbstractMapper;

@Repository("userDAO")
public class UserDAO extends EgovAbstractMapper{
	
	static Logger logger = Logger.getLogger(UserController.class);
	
	public void addUser(UserVO userVO) throws Exception{
		logger.debug("----------- DAO : addUser call");
		insert("userMapper.addUser", userVO);
	  
	}
	
	public UserVO selectMember(String id) throws Exception{
		logger.debug("----------- DAO : selectMember call");
		return (UserVO)selectOne("userMapper.selectUser", id);  
		        
	}
	
	//회원정보
	public UserVO selectUserInfo(String id) {
		logger.debug("----------- DAO : selectUserInfo call");
		return (UserVO)selectOne("userMapper.selectUserInfo", id);  
	}
	
	//회원정보 수정
	public int updateUser(UserVO userVO) {
		logger.debug("----------- DAO : updateUser call");
		return update("userMapper.updateUser", userVO);
	}
	
	//관리자 전체회원목록 조회
	public List userList(Map<String, String> map) {  
		logger.debug("----------- DAO : userList call");
		return selectList("userMapper.selectAllUserList",map);    
	}

	public void updateUserPermission(UserVO userVO) throws Exception {
		//TODO Auto-generated method stub
		logger.debug("----------- DAO : updateUserPermission call");
		
		update("userMapper.updateUserPermission", userVO);
	}

	public void userDelete(String id) throws Exception {
		//TODO Auto-generated method stub
		logger.debug("----------- DAO : userDelete call");
		
		update("userMapper.userDelete", id);
		
	}

	public void updateUseYn(String id) throws Exception {
		//TODO Auto-generated method stub
		logger.debug("----------- DAO : updateUseYn call");
		
		update("userMapper.updateUseYn", id);
		
	}  

	
}
