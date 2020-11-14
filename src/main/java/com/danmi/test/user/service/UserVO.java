package com.danmi.test.user.service;

import java.sql.Date;

public class UserVO{
	
	private static final long serialVersionUID = 1L;
	
	/** 사용자순번 USEQ */
	private int useq;
	
	/** 권한 */
	private int permission;
	
	/** 아이디 */
	private String id;
	
	/** 이름 */
	private String userNm;
	
	/** 별칭 */
	private String userNick;
	
	/** 비밀번호 */
	private String password;
	
	/** 이메일 */
	private String email;
	
	/** 휴대폰번호 */
	private String hphone;
	
	/** 전화번호 */
	private String phone;
	
	/** 우편번호 */
	private String zipcode;
	
	/** 주소1 */
	private String addr1;
	
	/** 주소2 */
	private String addr2;
	
	/** 생년월일 */
	private String birthday;
	
	/** 메일 수신여부 */
	private String mailingYn;
	
	/** 사용여부 */
	private String useYn;
	
	/** IP제한여부 */
	private String ipLimit;
	
	/** 삭제여부 */
	private String deleteYn;
	
	/** 인증일 */
	private Date authDt;
	
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

	public String getUserNick() {
		return userNick;
	}

	public void setUserNick(String userNick) {
		this.userNick = userNick;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getHphone() {
		return hphone;
	}

	public void setHphone(String hphone) {
		this.hphone = hphone;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public String getAddr1() {
		return addr1;
	}

	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}

	public String getAddr2() {
		return addr2;
	}

	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getMailingYn() {
		return mailingYn;
	}

	public void setMailingYn(String mailingYn) {
		this.mailingYn = mailingYn;
	}

	public String getUseYn() {
		return useYn;
	}

	public void setUseYn(String useYn) {
		this.useYn = useYn;
	}

	public String getIpLimit() {
		return ipLimit;
	}

	public void setIpLimit(String ipLimit) {
		this.ipLimit = ipLimit;
	}

	public String getDeleteYn() {
		return deleteYn;
	}

	public void setDeleteYn(String deleteYn) {
		this.deleteYn = deleteYn;
	}

	public Date getAuthDt() {
		return authDt;
	}

	public void setAuthDt(Date authDt) {
		this.authDt = authDt;
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
