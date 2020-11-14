
package com.danmi.test.permission.service;

import java.sql.Date;

public class PermissionVO {
	
	/** 권한고유아이디*/
	private int permissionId;
	
	/** 권한*/
	private int permission ;
	
	/** 권한명*/
	private String permissionNm;
	
	/** 사용여부*/
	private String useYn;
	
	/** 생성일자*/
	private Date regDt;

	public int getPermission() {
		return permission;
	}

	public void setPermission(int permission) {
		this.permission = permission;
	}

	public String getPermissionNm() {
		return permissionNm;
	}
    
	public void setPermissionNm(String permissionNm) {
		this.permissionNm = permissionNm;
	}
    
	public String getUseYn() {
		return useYn;
	}

	public void setUseYn(String useYn) {
		this.useYn = useYn;
	}

	public Date getRegDt() {
		return regDt;
	}

	public void setRegDt(Date regDt) {
		this.regDt = regDt;
	}

	public int getPermissionId() {
		return permissionId;
	}

	public void setPermissionId(int permissionId) {
		this.permissionId = permissionId;
	}
	
	
}
