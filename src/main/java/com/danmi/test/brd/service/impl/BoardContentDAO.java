
package com.danmi.test.brd.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.danmi.test.brd.service.BoardContentFileVO;
import com.danmi.test.brd.service.BoardContentVO;

import egovframework.rte.psl.dataaccess.EgovAbstractMapper;

@Repository("boardContentDAO")
public class BoardContentDAO extends EgovAbstractMapper {
	
	static final Logger logger=LoggerFactory.getLogger(BoardContentDAO.class);
    
	private BoardContentVO boardContentVO;
	
	public List<BoardContentVO> selectBoardContentList(Map<String, Integer> paramMap ,int startRow,int endRow)throws Exception{
		
		logger.debug("----------- BoardContentDAO : selectBoardConList start");
		
		System.out.println(paramMap.get("boardCd")+"contentDAO");

		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("boardCd",paramMap.get("boardCd"));
		map.put("endRow", endRow);
		map.put("startRow", startRow);
		return selectList("boardContentMapper.selectBoardContentList", map);
	}

	public BoardContentVO selectBoardContentInfo(int contentId) throws Exception {
		
		logger.debug("----------- BoardContentDAO : selectBoardContentInfo start");
		
		update("boardContentMapper.updateReadCount",contentId);
		
		return selectOne("boardContentMapper.selectBoardContentInfo", contentId);
	}
	
	public int insertBoardContent(BoardContentVO boardContentVO) throws Exception{
		
		logger.debug("----------- BoardContentDAO : insertBoardContent start");
		
		return insert("boardContentMapper.insertBoardContent", boardContentVO);
	}
	
	public int updateBoardContent(BoardContentVO boardContentVO) throws Exception{
		
		logger.debug("----------- BoardContentDAO : updateBoardContent start");
		
		return update("boardContentMapper.updateBoardContent", boardContentVO);
		
	}
	
	public void deleteBoardContent(int contentId) throws Exception{
		
		logger.debug("----------- BoardContentDAO : deleteBoardContent start");
		
		update("boardContentMapper.deleteBoardContent", contentId);
		
		logger.debug("----------- BoardContentDAO : deleteBoardContent end");
		
	}
	
	public int selcetBoardCount(Map<String, Integer> map) throws Exception{
		
		logger.debug("----------- BoardContentDAO : selcetBoardCount start");
		
		return selectOne("boardContentMapper.selcetBoardCount", map);
	   
	}
	
	public void updateReadCount(int contentId) throws Exception{
		
		logger.debug("----------- BoardContentDAO : updateReadCount start");
	
		update("boardContentMapper.updateReadCount", contentId);
		
		logger.debug("----------- BoardContentDAO : updateReadCount end"); 
	}

	public List<BoardContentVO> allBoardContentList(Map<String, Integer> map, int startRow, int endRow) throws Exception {
		//TODO Auto-generated method stub
		logger.debug("----------- BoardContentDAO : allBoardContentList start");
		Map<String, Integer> map1 = new HashMap<String, Integer>();
		map1.put("boardCd",map.get("boardCd"));
		map1.put("endRow", endRow);
		map1.put("startRow", startRow);
		return  selectList("boardContentMapper.allBoardContentList", map1);
	}

	public int adminBoardContentCount(int boardCd) throws Exception {
		//TODO Auto-generated method stub
		logger.debug("----------- BoardContentDAO : adminBoardContentCount start");
		
		return selectOne("boardContentMapper.adminTotalCount", boardCd);
	}

	public void updateBoardContentUseYn(int contentId) throws Exception {
		//TODO Auto-generated method stub
		logger.debug("----------- BoardContentDAO : updateBoardContentUseYn start");
		
		update("boardContentMapper.updateBoardContentUseYn", contentId);
	}

	public void insertFile(Map<String, Object> map) throws Exception {
		//TODO Auto-generated method stub
		
		logger.debug("----------- BoardContentDAO : insertFile start");
		
		insert("boardContentMapper.insertFile", map);
	}

	public BoardContentFileVO selectFile(int contentId) throws Exception {
		//TODO Auto-generated method stub
		logger.debug("----------- BoardContentDAO : selectFile start");
		
		return selectOne("boardContentMapper.selectFile",contentId);
	}
}
