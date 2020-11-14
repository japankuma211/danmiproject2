
package com.danmi.test.permission.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.danmi.test.permission.service.PermissionService;
import com.danmi.test.permission.service.PermissionVO;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;

@Service("permissionService")
public class PermissionServiceImpl extends EgovAbstractServiceImpl implements PermissionService {
	
	private static final Logger logger = LoggerFactory.getLogger(PermissionServiceImpl.class);
	
	@Resource(name = "permissionDAO")
	private PermissionDAO permissionDAO;

	@Override
	public List<PermissionVO> permissionList() throws Exception {
		//TODO Auto-generated method stub
		logger.debug("------------ permissionServiceImpl : permissionList() start");
		
		return permissionDAO.permissionList();
	}

	@Override
	public PermissionVO permissionInfo(int permissionId) throws Exception {
		//TODO Auto-generated method stub
		logger.debug("------------ permissionServiceImpl : permissionInfo() start");
		
		return permissionDAO.permissionInfo(permissionId);
	}

	@Override
	public void updatePermission(PermissionVO permissionVO) throws Exception {
		//TODO Auto-generated method stub
		logger.debug("------------ permissionServiceImpl : updatePermission() start");
		
		permissionDAO.updatePermission(permissionVO);
	}

	@Override
	public void deletePermission(int permissionId) throws Exception {
		//TODO Auto-generated method stub
		logger.debug("------------ permissionServiceimpl : deletePermission() start");
		
		 permissionDAO.deletePermission(permissionId);
	}

	@Override
	public void insertPermission(PermissionVO permissionVO) throws Exception {
		//TODO Auto-generated method stub
		logger.debug("------------ permissionServiceimpl : insertPermission() start");
		 permissionDAO.insertPermission(permissionVO);
	}
	
	
	

}
