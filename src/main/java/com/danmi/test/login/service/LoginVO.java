package com.danmi.test.login.service;

import java.sql.Date;

public class LoginVO {
	
	private static final long serialVersionUID = 1L;
	
	/** 사용자순번 SEQ */
	private int useq;
	
	/** 권한 */
	private int permission;
	
	/** 아이디 */
	private String id;
	
	/** 이름 */
	private String userNm;
	
	/** 휴대폰번호 */
	private String hphone;
	
	/** ip */
	private String ip;
	
	/** 생성일자 */
	private Date regDt;

	public int getUseq() {
		return useq;
	}

	public void setUseq(int useq) {
		this.useq = useq;
	}

	public int getPermission() {
		return permission;
	}

	public void setPermission(int permission) {
		this.permission = permission;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getUserNm() {
		return userNm;
	}

	public void setUserNm(String userNm) {
		this.userNm = userNm;
	}

	public String getHphone() {
		return hphone;
	}

	public void setHphone(String hphone) {
		this.hphone = hphone;
	}

	public String getIp() {
		return ip;
	}

	public void setIp(String ip) {
		this.ip = ip;
	}

	public Date getRegDt() {
		return regDt;
	}

	public void setRegDt(Date regDt) {
		this.regDt = regDt;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
	
}
