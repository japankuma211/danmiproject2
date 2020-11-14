
package com.danmi.test.brd.service.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.danmi.test.brd.service.BoardVO;

import egovframework.rte.psl.dataaccess.EgovAbstractMapper;

@Repository("boardDAO")
public class BoardDAO extends EgovAbstractMapper {
	
	static final Logger logger=LoggerFactory.getLogger(BoardDAO.class);
	
	private BoardVO boardvo;
	
	public BoardVO selectTBrd(int boardCd) throws Exception {
		
		logger.debug("----------- BoardDAO : selectTBrd start");
		
		boardvo=selectOne("boardMapper.selectTBrd", boardCd);
		
		logger.debug("----------- BoardDAO : selectTBrd end");
		
		return boardvo;
	}
	
	public List<BoardVO> selectList(Map<String, Integer> map) throws Exception {
		
       logger.debug("----------- BoardDAO : selectList start");
		System.out.println("DAO permission"+map);
		return selectList("boardMapper.selectList",map);
	}
	
	public void deleteBoard(int boardCd) throws Exception {
		
        logger.debug("----------- BoardDAO : deleteBoard start");
		
		update("boardMapper.deleteBoard", boardCd);
		
		logger.debug("----------- BoardDAO : deleteBoard end");
		
	}
 
	public void insertBoard(BoardVO boardVO) throws Exception {
		
        logger.debug("----------- BoardDAO : insertBoard start");
		
		insert("boardMapper.insertBoard", boardVO);
		
		logger.debug("----------- BoardDAO : insertBoard end");
		
	}

	public int updateBoard(BoardVO boardVO) throws Exception {
		//TODO Auto-generated method stub
		logger.debug("----------- BoardDAO : updateBoard start");
		
		return update("boardMapper.updateBoard", boardVO);
	}

}
