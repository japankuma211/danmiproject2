/*
 * Copyright 2008-2009 the original author or authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package com.danmi.test.user.service.impl;

import java.util.List;
import java.util.Map;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import egovframework.rte.fdl.idgnr.EgovIdGnrService;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.danmi.test.login.service.LoginVO;
import com.danmi.test.user.service.UserService;
import com.danmi.test.user.service.UserVO;



/**
 * @Class Name : EgovSampleServiceImpl.java
 * @Description : Sample Business Implement Class
 * @Modification Information
 * @
 * @  수정일      수정자              수정내용
 * @ ---------   ---------   -------------------------------
 * @ 2009.03.16           최초생성
 *
 * @author 개발프레임웍크 실행환경 개발팀
 * @since 2009. 03.16
 * @version 1.0
 * @see
 *
 *  Copyright (C) by MOPAS All right reserved.
 */

@Service("userService")
public class UserServiceImpl extends EgovAbstractServiceImpl implements UserService {
  
	private static final Logger LOGGER = LoggerFactory.getLogger(UserServiceImpl.class);

	/** testDAO */  
	// TODO ibatis 사용
	@Resource(name = "userDAO")
	private UserDAO userDAO;
	// TODO mybatis 사용
	//  @Resource(name="sampleMapper")
	//	private SampleMapper testDAO;

	/** ID Generation */
	@Resource(name = "egovIdGnrService")
	private EgovIdGnrService egovIdGnrService;


	/**
	 * 글 목록을 조회한다.
	 * @param searchVO - 조회할 정보가 담긴 VO
	 * @return 글 목록
	 * @exception Exception
	 */
	@Override
	public void addUser(UserVO vo) throws Exception{
		LOGGER.debug("============= impl addUser call");
		userDAO.addUser(vo); 
		
	}

	//로그인
	@Override
	public UserVO selectMember(String id) throws Exception {
		LOGGER.debug("============= impl selectMember call");
		/*System.out.println(id);*/
		return userDAO.selectMember(id);
			
	}

	//회원정보 수정 페이지
	@Override
	public UserVO selectUserInfo(String id) {
		LOGGER.debug("============= impl selectUser call");
		
		return userDAO.selectUserInfo(id);
	}
	
	//회원정보 수정
	@Override
	public int updateUser(UserVO userVO) throws Exception {
		LOGGER.debug("============= impl updateUser call");
		return userDAO.updateUser(userVO);
	}
	
	//관리자 전체회원목록 조회
	@Override 
	public List<UserVO> userList(Map<String, String> map) throws Exception {
		
		LOGGER.debug("============= impl userList call");
		
		List<UserVO> selectList = userDAO.userList(map);
		
		return selectList;
	}

	@Override
	public void updateUserPermission(UserVO userVO) throws Exception {
		//TODO Auto-generated method stub
		
		LOGGER.debug("============= impl updateUserPermission call");
		
		userDAO.updateUserPermission(userVO);
		
	}

	@Override
	public void userDelete(String id) throws Exception {
		//TODO Auto-generated method stub
        LOGGER.debug("============= impl userDelete call");
		
		userDAO.userDelete(id);
	}

	@Override
	public void updateUseYn(String id) throws Exception {
		//TODO Auto-generated method stub
		LOGGER.debug("============= impl updateUseYn call");
		
		userDAO.updateUseYn(id);
		
	}
	
	
	
	
	
	

}
