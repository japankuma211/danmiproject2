
package com.danmi.test.brd.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;

import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springmodules.validation.commons.DefaultBeanValidator;

import com.danmi.test.brd.service.BoardService;
import com.danmi.test.brd.service.BoardVO;

import egovframework.rte.fdl.property.EgovPropertyService;

@Controller
public class BoardController {
	
	static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@Resource(name = "boardService")
	private BoardService boardService;
	

	
	@RequestMapping(value = "/index.do")
	public String main(ModelMap model ,ModelAndView mav )throws Exception {
		
		logger.debug("----------- BoardController : index.do start");
		
		if(model.get("msg") != null ) {
			
		model.addAttribute("msg","ok");
		
		}
		logger.debug("----------- BoardController : index.do end");
		
		return"index";
	}
	
	
	@RequestMapping(value = "/boardPage.do")
	public String boardPage(ModelMap model ,String msg)throws Exception {
		
		logger.debug("----------- BoardController : boardPage.do start");
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		  
		if(msg != null) {
		 map.put("permission", 999);
		
		}else {
			 map.put("permission", 0);
		}
		System.out.println(map);
		
		List<BoardVO> boardList=boardService.selectList(map);
		System.out.println("boardList"+boardList);
		model.addAttribute("boardList", boardList);
		
		logger.debug("----------- BoardController : boardPage.do end");
		
		return"/brd/board";
	}
	
	@RequestMapping(value = "/boardInfo.do")
	public String boardInfo(int boardCd,ModelMap model) throws Exception {
		
        logger.debug("----------- BoardController : boardInfo.do start");
		
		BoardVO vo=boardService.selectTBrd(boardCd);
		
		model.addAttribute("vo", vo);
		
		logger.debug("----------- BoardController : boardInfo.do end");
		
		
		return "/brd/boardInfo";
	}
	
	@RequestMapping(value = "/updateBoardPage.do")
	public String updateBoardPage(int boardCd,ModelMap model)throws Exception {
		 logger.debug("----------- BoardController : updateBoardPage.do start");
		 
		 BoardVO vo=boardService.selectTBrd(boardCd);
		
		 model.addAttribute("vo", vo);
		 
		 return"/brd/updateBoard";
	}
	@RequestMapping(value = "/updateBoard.do")
	public String updateBoard(BoardVO boardVO,ModelMap model)throws Exception {
		 logger.debug("----------- BoardController : updateBoardPage.do start");
		 
		int result= boardService.updateBoard(boardVO);
		
		String msgResult=null;
		
		if(result != 0) {
			 model.addAttribute("msg", "ok");
			
			 msgResult="forward:/boardInfo.do?boardCd="+ boardVO.getBoardCd();
			 
		}else {
			
			model.addAttribute("boardCd", boardVO.getBoardCd());
			
			msgResult="forward:/updateBoardPage.do";
		}
		
		 
		 return msgResult;
	}
	
	@RequestMapping(value = "/deleteBoard.do" )
	public String deleteBoard(int boardCd,ModelMap model) throws Exception  {
        logger.debug("----------- BoardController :deleteBoard.do start");
		
		boardService.deleteBoard(boardCd);
		
		model.addAttribute("msg", "ok");
		
		logger.debug("----------- BoardController : deleteBoard.do end");
		
		return "forward:/boardPage.do";
	}
	
	@RequestMapping(value = "/insertBoard.do" )
	public String insertBoard(BoardVO boardVO,ModelMap model)throws Exception  {
		
        logger.debug("----------- BoardController : boardPage.do start");
		
		boardService.insertBoard(boardVO);
		
		
		model.addAttribute("msg", "ok");
		
		logger.debug("----------- BoardController : boardPage.do end");
		
		return"forward:/boardPage.do";
	}
	
	
	@RequestMapping(value = "/insertBoardPage.do")
	public String insertBoardPage(ModelMap model) throws Exception{
		
		logger.debug("----------- BoardController : insertBoardPage.do end");
		
		return "/brd/insertBoard";
	}
}
