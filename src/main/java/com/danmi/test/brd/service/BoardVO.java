
package com.danmi.test.brd.service;

import java.sql.Date;

public class BoardVO {
	
	private static final long serialVersionUID = 1L;
	
	/** 게시판코드SEQ*/
	private int boardCd;
	
	/** 게시판명*/
	private String boardNm;
	
	/**게시판타입(N:일반형,I:이미지형,C:캘린더형)*/
	private String  boardTp;
	
	/** 게시판 순서*/
	private int orderby;
	
	/** 추천여부*/
	private String recomYn;
	
	/** 스크랩여부*/
	private String scrapYn;
	
	/** 댓글여부*/
	private String replyYn;
	
	/** 카테고리여부*/
	private String categoryYn;
	
	/** 권한 - 읽기*/
	private int permRead;
	
	/**권한 - 쓰기*/
	private int	 permInst;
	
	/** 사용여부*/
	private String	useYn;
	
	/** 생성일자*/
	private Date regDt;
	
	
	/** 생성자*/
	public BoardVO() {
		
	}
	
	
	public int getBoardCd() {
		return boardCd;
	}
	public void setBoardCd(int boardCd) {
		this.boardCd = boardCd;
	}
	public String getBoardNm() {
		return boardNm;
	}
	public void setBoardNm(String boardNm) {
		this.boardNm = boardNm;
	}
	public String getBoardTp() {
		return boardTp;
	}
	public void setBoardTp(String boardTp) {
		this.boardTp = boardTp;
	}
	public int getOrderby() {
		return orderby;
	}
	public void setOrderby(int orderby) {
		this.orderby = orderby;
	}
	public String getRecomYn() {
		return recomYn;
	}
	public void setRecomYn(String recomYn) {
		this.recomYn = recomYn;
	}
	public String getScrapYn() {
		return scrapYn;
	}
	public void setScrapYn(String scrapYn) {
		this.scrapYn = scrapYn;
	}
	public String getReplyYn() {
		return replyYn;
	}
	public void setReplyYn(String replyYn) {
		this.replyYn = replyYn;
	}
	public String getCategoryYn() {
		return categoryYn;
	}
	public void setCategoryYn(String categoryYn) {
		this.categoryYn = categoryYn;
	}
	public int getPermRead() {
		return permRead;
	}
	public void setPermRead(int permRead) {
		this.permRead = permRead;
	}
	public int getPermInst() {
		return permInst;
	}
	public void setPermInst(int permInst) {
		this.permInst = permInst;
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
	
	
	
     
}
