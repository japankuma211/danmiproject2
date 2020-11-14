
package com.danmi.test.brd.service;

import java.sql.Date;

public class BoardContentFileVO {
	
	private static final long serialVersionUID = 1L;
	
	/* 파일 번호 */ 
	private int fileId ;  
	
	/* 게시판번호 */ 
	private int  contentId ;
	
	/* 원본 파일이름 */
	private String  orgFileName;
	
	/* 변경된 파일이름 */
	private String  storedFileName; 
	
	/* 파일등록일 */
	private Date  regDt ; 
	
	/* 사용유무 */
	private String useYn ;
	
	/* 파일사이즈 */
	private double fileSize;
	
	/* 생정자 */
	public BoardContentFileVO() {
	
	}

	public int getFileId() {
		return fileId;
	}
	

	public void setFileId(int fileId) {
		this.fileId = fileId;
	}

	public int getContentId() {
		return contentId;
	}

	public void setContentId(int contentId) {
		this.contentId = contentId;
	}

	public String getOrgFileName() {
		return orgFileName;
	}

	public void setOrgFileName(String orgFileName) {
		this.orgFileName = orgFileName;
	}

	public String getStoredFileName() {
		return storedFileName;
	}

	public void setStoredFileName(String storedFileName) {
		this.storedFileName = storedFileName;
	}

	public Date getRegDt() {
		return regDt;
	}

	public void setRegDt(Date regDt) {
		this.regDt = regDt;
	}

	public String getUseYn() {
		return useYn;
	}

	public void setUseYn(String useYn) {
		this.useYn = useYn;
	}

	public double getFileSize() {
		return fileSize;
	}

	public void setFileSize(double fileSize) {
		this.fileSize = fileSize;
	}

	
	
}
