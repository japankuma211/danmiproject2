
package com.danmi.test.permission.service;

import java.util.List;

public interface PermissionService {
	
	public List<PermissionVO> permissionList() throws Exception;
    
	public PermissionVO permissionInfo(int permissionId) throws Exception;
	
	public void updatePermission(PermissionVO permissionVO) throws Exception;
	
	public void deletePermission(int permissionId) throws Exception;
	
	public void insertPermission(PermissionVO permissionVO) throws Exception; 
	
}
