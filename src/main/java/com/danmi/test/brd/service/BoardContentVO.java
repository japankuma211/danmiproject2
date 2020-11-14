
package com.danmi.test.brd.service;

import java.sql.Date;

public class BoardContentVO extends BoardVO{
	
	private static final long serialVersionUID = 1L;
	
         private int contentId; //			comment '게시글ID_SEQ'
         private int boardCd;//				comment '게시판코드SEQ'
		 private String title;//			comment '제목'
		 private String content	;//			comment '내용'
		 private int categorySeq;//			comment '카테고리SEQ'
		 private String tag;//				comment '태그'
		 private int readCnt;//				comment '조회수'
		 private String password;//			comment '비밀번호'
		 private String id;//				comment '작성자 아이디'
		 private String phone;//			comment '전화번호'
		 private Date dtStart;//			comment '게시시작일'
		 private Date dtEnd;//				comment '게시종료일'
		 private String status;//			comment '게시글상태(N:정상,D:삭제)'
		 private String ip;//				comment 'IP'
		 private Date uptDt;//				comment '수정일자'
		 private Date regDt;//	 comment '생성일자'		
		 
		 private BoardVO boardVO;
		 private int boardCount;
		 
		public BoardContentVO() {
			
		}
		
				
		public int getBoardCount() {
			return boardCount;
		}


		public void setBoardCount(int boardCount) {
			this.boardCount = boardCount;
		}


		public BoardVO getBoardVO() {
			return boardVO;
		}


		public void setBoardVO(BoardVO boardVO) {
			this.boardVO = boardVO;
		}


		public int getContentId() {
			return contentId;
		}
		public void setContentId(int contentId) {
			this.contentId = contentId;
		}
		public int getBoardCd() {
			return boardCd;
		}
		public void setBoardCd(int boardCd) {
			this.boardCd = boardCd;
		}
		public String getTitle() {
			return title;
		}
		public void setTitle(String title) {
			this.title = title;
		}
		public String getContent() {
			return content;
		}
		public void setContent(String content) {
			this.content = content;
		}
		public int getCategorySeq() {
			return categorySeq;
		}
		public void setCategorySeq(int categorySeq) {
			this.categorySeq = categorySeq;
		}
		public String getTag() {
			return tag;
		}
		public void setTag(String tag) {
			this.tag = tag;
		}
		public int getReadCnt() {
			return readCnt;
		}
		public void setReadCnt(int readCnt) {
			this.readCnt = readCnt;
		}
		public String getPassword() {
			return password;
		}
		public void setPassword(String password) {
			this.password = password;
		}
		public String getId() {
			return id;
		}
		public void setId(String id) {
			this.id = id;
		}
		public String getPhone() {
			return phone;
		}
		public void setPhone(String phone) {
			this.phone = phone;
		}
		public Date getDtStart() {
			return dtStart;
		}
		public void setDtStart(Date dtStart) {
			this.dtStart = dtStart;
		}
		public Date getDtEnd() {
			return dtEnd;
		}
		public void setDtEnd(Date dtEnd) {
			this.dtEnd = dtEnd;
		}
		public String getStatus() {
			return status;
		}
		public void setStatus(String status) {
			this.status = status;
		}
		public String getIp() {
			return ip;
		}
		public void setIp(String ip) {
			this.ip = ip;
		}
		public Date getUptDt() {
			return uptDt;
		}
		public void setUptDt(Date uptDt) {
			this.uptDt = uptDt;
		}
		public Date getRegDt() {
			return regDt;
		}
		public void setRegDt(Date regDt) {
			this.regDt = regDt;
		}
		

		 
}
