
package com.danmi.test.permission.service.impl;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Repository;

import com.danmi.test.permission.service.PermissionVO;

import egovframework.rte.psl.dataaccess.EgovAbstractMapper;

@Repository("permissionDAO")
public class PermissionDAO extends EgovAbstractMapper{
	
	static Logger logger = Logger.getLogger(PermissionDAO.class);
	
	public List<PermissionVO> permissionList() throws Exception {
		
		logger.debug("----------- PermissionDAO : permissionList start");
		
		return selectList("permissionMapper.permissionList") ;
	}
	
	public PermissionVO permissionInfo(int permissionId) throws Exception {
		
		logger.debug("----------- PermissionDAO : permissionList start");
		
		return selectOne("permissionMapper.permissionInfo",permissionId);
	}
	
	public int updatePermission(PermissionVO permissionVO) throws Exception {
		
		logger.debug("----------- PermissionDAO : updatePermission start");
	
		return update("permissionMapper.updatePermission",permissionVO );
	}
	
	public int deletePermission(int permissionId) throws Exception {
		
		logger.debug("----------- PermissionDAO : deletePermission start");
		
		return update("permissionMapper.deletePermission", permissionId);
	}

	public int insertPermission(PermissionVO permissionVO) throws Exception {
		//TODO Auto-generated method stub
		logger.debug("----------- PermissionDAO : insertPermission start");
		
		return insert("permissionMapper.insertPermission", permissionVO);
	}

}
