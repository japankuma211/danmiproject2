
package com.danmi.test.brd.service.impl;

import java.util.List;
import java.util.Map;

import com.danmi.test.brd.service.BoardContentVO;

import egovframework.rte.psl.dataaccess.mapper.Mapper;

@Mapper("boardContentMapper")
public interface BoardContentMapper {
	
	List<BoardContentVO> selectBoardContentList(Map<String, Integer> map) throws Exception;
	
	BoardContentVO selectBoardContentInfo(int contentId) throws Exception;

	int insertBoardContent(BoardContentVO boardContentVO) throws Exception;
	
	int updateBoardContent(BoardContentVO boardContentVO) throws Exception;
	
	void deleteBoardContent(int contentId)throws Exception;
	
	int  selcetBoardCount(Map<String, Integer> map) throws Exception;
	
	void updateReadCount(int contentId) throws Exception;
	
	void updateBoardContentUseYn(int contentId) throws Exception;
	
	void insertFile(Map<String, Object> map) throws Exception;
}
