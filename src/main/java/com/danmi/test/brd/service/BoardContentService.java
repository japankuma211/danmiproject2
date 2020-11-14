
package com.danmi.test.brd.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartHttpServletRequest;

public interface BoardContentService {
	
	public List<BoardContentVO> selectBoardContentList(Map<String, Integer> boardCd,int StartRow,int endRow) throws Exception;
    
	public BoardContentVO selectBoardContentInfo(int contentId) throws Exception;
	
	public void insertBoardContent(BoardContentVO boardContentVO,MultipartHttpServletRequest mpRequest,HttpServletRequest request) throws Exception;
	
	public void deleteBoardContent(int contentId) throws Exception;
	
	public int updateBoardContent(BoardContentVO boardContentVO) throws Exception;

	public int boardContentCount(int boardCd)throws Exception;

	public List<BoardContentVO> allBoardContentList(Map<String, Integer> map, int startRow, int endRow) throws Exception;

	public int adminBoardContentCount(int boardCd) throws Exception;

	public void updateBoardContentUseYn(int contentId) throws Exception;

	public BoardContentFileVO selectFile(int contentId) throws Exception;
}
