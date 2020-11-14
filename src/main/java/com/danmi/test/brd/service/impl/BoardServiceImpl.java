
package com.danmi.test.brd.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.danmi.test.brd.service.BoardService;
import com.danmi.test.brd.service.BoardVO;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import egovframework.rte.fdl.idgnr.EgovIdGnrService;

@Service("boardService")
public class BoardServiceImpl extends EgovAbstractServiceImpl implements BoardService {

	
	static final Logger logger = LoggerFactory.getLogger(BoardServiceImpl.class);
	
	@Resource(name = "boardDAO")
	private BoardDAO boardDAO;
	

	/** ID Generation */
	@Resource(name = "egovIdGnrService")
	private EgovIdGnrService egovIdGnrService;
  
	
	
	
	@Override
	public BoardVO selectTBrd(int boardCd) throws Exception{
		//TODO Auto-generated method stub
		logger.debug("----------- BoardServiceImpl : selectTBrd start");
		
		BoardVO vo=boardDAO.selectTBrd(boardCd);
		
		logger.debug("----------- BoardServiceImpl : selectTBrd end");
		
		return vo;
	}

	@Override
	public List<BoardVO> selectList(Map<String, Integer> map) throws Exception {
		//TODO Auto-generated method stub
		logger.debug("----------- BoardServiceImpl : selectList start");
		System.out.println(map +"service 퍼미션");
		
		List<BoardVO> boardList=boardDAO.selectList(map);
		
		logger.debug("----------- BoardServiceImpl : selectList end");
		
		return boardList;
	}

	@Override
	public void insertBoard(BoardVO boardVO) throws Exception {
		//TODO Auto-generated method stub
		
        logger.debug("----------- BoardServiceImpl : insertBoard start");
		
		boardDAO.insertBoard(boardVO);
		
		logger.debug("----------- BoardServiceImpl : insertBoard end");
		
	}

	@Override
	public void deleteBoard(int boardCd) throws Exception {
		//TODO Auto-generated method stub
		 logger.debug("----------- BoardServiceImpl : insertBoard start");
			
		 boardDAO.deleteBoard(boardCd);
			
		 logger.debug("----------- BoardServiceImpl : insertBoard end");
	}

	@Override
	public int updateBoard(BoardVO boardVO) throws Exception {
		//TODO Auto-generated method stub
		logger.debug("----------- BoardServiceImpl : updateBoard start");
		
		return boardDAO.updateBoard(boardVO);
	}


	
	
	
	
}
