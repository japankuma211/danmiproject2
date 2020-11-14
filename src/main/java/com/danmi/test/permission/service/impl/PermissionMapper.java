
package com.danmi.test.permission.service.impl;

import java.util.List;

import com.danmi.test.permission.service.PermissionVO;

import egovframework.rte.psl.dataaccess.mapper.Mapper;

@Mapper("permissionMapper")
public interface PermissionMapper {
	
	List<PermissionVO> permissionList() throws Exception;
	
	PermissionVO permissionInfo(int permissionId) throws Exception;
	
	void updatePermission(PermissionVO permissionVO) throws Exception;
	
	void deletePermission(int permissionId) throws Exception;
	
	void insertPermission(PermissionVO permissionVO) throws Exception;
    
}
