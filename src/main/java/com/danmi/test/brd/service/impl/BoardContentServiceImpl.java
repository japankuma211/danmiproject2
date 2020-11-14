
package com.danmi.test.brd.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.danmi.test.brd.service.BoardContentFileVO;
import com.danmi.test.brd.service.BoardContentService;
import com.danmi.test.brd.service.BoardContentVO;
import com.danmi.test.brd.util.FileUtils;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import egovframework.rte.fdl.idgnr.EgovIdGnrService;

@Service("boardContentService")
public class BoardContentServiceImpl extends EgovAbstractServiceImpl implements BoardContentService{

	static final Logger logger = LoggerFactory.getLogger(BoardContentServiceImpl.class);
	
	@Resource(name = "boardContentDAO")
	private BoardContentDAO boardContentDAO;
	
	/** ID Generation */
	@Resource(name = "egovIdGnrService")
	private EgovIdGnrService egovIdGnrService;
	
	@Resource(name="fileUtils")
	private FileUtils fileUtils;
	
	@Override
	public List<BoardContentVO> selectBoardContentList(Map<String, Integer> boardCd,int startRow,int endRow) throws Exception {
		//TODO Auto-generated method stub
        logger.debug("----------- BoardContentServiceImpl : selectBoardContentList start");
       
		List<BoardContentVO> list=boardContentDAO.selectBoardContentList(boardCd,startRow,endRow);
		for(BoardContentVO boartContentVO :list) {
			
			int boardCount=boardContentDAO.selcetBoardCount(boardCd);
			System.out.println("boardCount"+boardCount);
			boartContentVO.setBoardCount(boardCount);
		}
		return list;
	}

	@Override
	public BoardContentVO selectBoardContentInfo(int contentId) throws Exception {
		//TODO Auto-generated method stub
		logger.debug("----------- BoardContentServiceImpl : selectBoardContentInfo start");
		return boardContentDAO.selectBoardContentInfo(contentId);
	}

	@Override
	public void insertBoardContent(BoardContentVO boardContentVO,MultipartHttpServletRequest mpRequest,HttpServletRequest request) throws Exception {
		//TODO Auto-generated method stub
		logger.debug("----------- BoardContentServiceImpl : insertBoardContent start");
		
		boardContentDAO.insertBoardContent(boardContentVO);
		
		List<Map<String,Object>> list=fileUtils.parseInsertFileInfo(boardContentVO, mpRequest,request); 
		
        //int size = list.size();
		
		for(int i=0; i<list.size(); i++){ 
		 //파일 업로드
		boardContentDAO.insertFile(list.get(i));
			
		}
		
	}

	@Override
	public void deleteBoardContent(int contentId) throws Exception {
		//TODO Auto-generated method stub
		logger.debug("----------- BoardContentServiceImpl : deleteBoardContent start");
		
		boardContentDAO.deleteBoardContent(contentId);
		
		logger.debug("----------- BoardContentServiceImpl : deleteBoardContent end");
	}

	@Override
	public int updateBoardContent(BoardContentVO boardContentVO) throws Exception {
		//TODO Auto-generated method stub
		
		logger.debug("----------- BoardContentServiceImpl : updateBoardContent start");
		
		return boardContentDAO.updateBoardContent(boardContentVO);
	}

	@Override
	public int boardContentCount(int boardCd) throws Exception {
		//TODO Auto-generated method stub
		logger.debug("----------- BoardContentServiceImpl : boardContentCount start");
		
		Map<String, Integer> map= new HashMap<String, Integer>();
		
		map.put("boardCd", boardCd);
		
		return boardContentDAO.selcetBoardCount(map);
	}

	@Override
	public List<BoardContentVO> allBoardContentList(Map<String, Integer> map, int startRow, int endRow) throws Exception {
		//TODO Auto-generated method stub
		logger.debug("----------- BoardContentServiceImpl : allBoardContentList start");
		
		return boardContentDAO.allBoardContentList(map,startRow,endRow);
	}

	@Override
	public int adminBoardContentCount(int boardCd) throws Exception {
		//TODO Auto-generated method stub
		logger.debug("----------- BoardContentServiceImpl : adminBoardContentCount start");
		return boardContentDAO.adminBoardContentCount(boardCd);
	}

	@Override
	public void updateBoardContentUseYn(int contentId) throws Exception {
		//TODO Auto-generated method stub
		logger.debug("----------- BoardContentServiceImpl : updateBoardContentUseYn start");
		
		boardContentDAO.updateBoardContentUseYn(contentId);
	}

	@Override
	public BoardContentFileVO selectFile(int contentId) throws Exception {
		//TODO Auto-generated method stub
		logger.debug("----------- BoardContentServiceImpl : selectFile start");
		
	    return boardContentDAO.selectFile(contentId);
	}

	
	
	
	
	
	
	
	

}
