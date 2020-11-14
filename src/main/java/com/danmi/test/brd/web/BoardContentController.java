
package com.danmi.test.brd.web;


import java.io.File;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springmodules.validation.commons.DefaultBeanValidator;

import com.danmi.test.brd.service.BoardContentFileVO;
import com.danmi.test.brd.service.BoardContentService;
import com.danmi.test.brd.service.BoardContentVO;
import com.danmi.test.user.service.UserService;
import com.danmi.test.user.service.UserVO;

import egovframework.rte.fdl.property.EgovPropertyService;

@Controller
public class BoardContentController {
	
	static final Logger logger = LoggerFactory.getLogger(BoardContentController.class);
	
	@Resource(name = "boardContentService")
    private BoardContentService boardContentService;
	@Resource(name = "userService")
	private UserService userservice;
	//** EgovPropertyService *//*
	/*@Resource(name = "propertiesService")
	protected EgovPropertyService propertiesService;
*/
	//** Validator *//*
/*	@Resource(name = "beanValidator")
	protected DefaultBeanValidator beanValidator;*/
	
	
	@RequestMapping(value ="/boardContentList.do")
	public String boardContentList(int boardCd,String pageNum,ModelMap model) throws Exception{
		
		logger.debug("----------- BoardContentController : boardContentList.do start");
		
		if(pageNum == null || pageNum == ""){
  			
  			pageNum = "1";
  		}
	  
   	    int totalCount= boardContentService.boardContentCount(boardCd);//총 게시글수
   	    int currentPage = Integer.parseInt(pageNum);//현재페이지
   	    int pageSize = 5;//한페이지에 보여질 게시글 수
   	    int startRow = ((currentPage - 1) * pageSize)+1;//보여질 게시글 번호
   		
   		int pageCount=0;//총페이지수
   		int pageBlock=0;//블럭단위
   		int startPage=0;//처음페이지
   		int endPage =0;//마지막페이지    
   		int endRow=0;
   		List<BoardContentVO> contentList =null;
   		
		Map<String, Integer> map =new HashMap<String, Integer>();
		
		map.put("boardCd", boardCd);
	 
		if(totalCount > 0){	
		  endRow=startRow+pageSize-1;
		 contentList=boardContentService.selectBoardContentList(map ,startRow,endRow);
		 pageCount = totalCount / pageSize + (totalCount % pageSize == 0 ? 0 : 1);  			
			pageBlock = 1;
			startPage = ((currentPage/pageBlock) - (currentPage % pageBlock == 0 ? 1 : 0 )) * pageBlock + 1;		
			endPage = startPage + pageBlock - 1; 
			
			if(endPage > pageCount){
				
				        endPage = pageCount;
				        
			 }//(endPage > pageCount)끝
	 }
		
		model.addAttribute("totalCount", totalCount);
		model.addAttribute("pageNum", pageNum);
		model.addAttribute("startRow", startRow);
		model.addAttribute("pageSize", pageSize);
		model.addAttribute("pageCount", pageCount);
		model.addAttribute("pageBlock", pageBlock);
		model.addAttribute("startPage", startPage);
		model.addAttribute("endPage", endPage);
		model.addAttribute("boardCd", boardCd);
		model.addAttribute("contentList", contentList);
		
		return "/brd/boardContentList";
	}
	
	
	@RequestMapping(value ="/boardContentInfo.do")
	public String boardContentInfo(int contentId,ModelMap model) throws Exception{
		
		logger.debug("----------- BoardContentController : boardContentInfo.do start");
         
		BoardContentVO boardContentVO = boardContentService.selectBoardContentInfo(contentId);
		BoardContentFileVO  FileVO=boardContentService.selectFile(contentId);
		
		model.addAttribute("contentVO", boardContentVO);
		model.addAttribute("FileVO", FileVO);
		return"/brd/boardContentInfo";
	}
	
	@RequestMapping(value ="/updateBoardContentPage.do")
	public String updateBoardContentPage(int contentId, ModelMap model) throws Exception{
		
		logger.debug("----------- BoardContentController : updateBoardContentPage.do start");
		
		BoardContentVO boardContentVO = boardContentService.selectBoardContentInfo(contentId);
		
		model.addAttribute("contentVO", boardContentVO);
		
		return "brd/updateBoardContent";
	}
	
	@RequestMapping(value = "/updateBoardContent.do" )
	public String updateBoardContent(BoardContentVO boardContentVO, ModelMap model) throws Exception{
	
		logger.debug("contentId"+boardContentVO.getContentId());
		logger.debug("----------- BoardContentController : updateBoardContent.do start");
	 
		int result=boardContentService.updateBoardContent(boardContentVO);
		
	
		 String msgResult = null;
		
		if (result != 0) {
			
			model.addAttribute("msg", "ok");
			
			msgResult = "forward:/boardContentInfo.do?contentId="+boardContentVO.getContentId();
				
		}else{
			
			model.addAttribute("contentId",boardContentVO.getContentId());
			
			msgResult ="forward:/updateBoardContentPage.do";
	
		}

		return msgResult;
	}
	
	
	@RequestMapping(value = "/deleteBoardContent.do")
	public String deleteBoardContent(String adminDel,String pageNum,int boardCd,int contentId,ModelMap model) throws Exception{
		
		logger.debug("----------- BoardContentController : deleteBoardContent.do start");
		
		boardContentService.deleteBoardContent(contentId);
		if(pageNum == null) {
			pageNum ="1";
		}
		String result=null;
		    model.addAttribute("msg", "ok");
		    model.put("pageNum", pageNum);
			model.put("boardCd", boardCd);
		if(adminDel != null && adminDel.equals("ok")) {
			result ="forward:/allBoardContentList.do";
		}else {
	       result="forward:/boardContentList.do";
		}
		
		
		return result ;
	}
	
	@RequestMapping(value = "/insertBoardContentPage.do")
	public String insertBoardContentPage(HttpSession session ,Model model) throws Exception {
		
		logger.debug("----------- BoardContentController : insertBoardContentPage.do start");
	
		String id=(String)session.getAttribute("id");
		
		UserVO vo=userservice.selectMember(id);
		
		System.out.println("phone"+vo.getPhone());
		System.out.println("password"+vo.getPassword());
		
		model.addAttribute("vo", vo);
		
		return "/brd/insertBoardContent";
		
	}
	
	@RequestMapping(value = "/insertBoardContent.do" , method= RequestMethod.POST)
	public String insertBoardContent(BoardContentVO boardContentVO,ModelMap model,HttpServletRequest request,MultipartHttpServletRequest mpRequest) throws Exception{
		logger.debug("----------- BoardContentController : insertBoardContent.do start");

		String msgResult=null;
		
		boardContentVO.setIp(request.getRemoteAddr());
		
		boardContentService.insertBoardContent(boardContentVO,mpRequest,request);
		
		/*if (result != 0) {
			
			model.addAttribute("msg", "ok");
			
			msgResult = "forward:/index.do";
				
		}else{
			
			
			msgResult ="forward:/insertBoardContentPage.do";
	
		}

		return msgResult;*/
		 model.addAttribute("msg", "ok");
		 
		 return "forward:/boardContentList.do?boardCd="+boardContentVO.getBoardCd();
	}
	@RequestMapping(value ="/allBoardContentList.do")
	public String allBoardContentList(String msg,int boardCd,String pageNum,ModelMap model) throws Exception{
		
		logger.debug("----------- BoardContentController : allBoardContentList.do start");
	
		if(pageNum == null || pageNum == ""){
  			
  			pageNum = "1";
  		}
		
	    System.out.println(pageNum+"pageNum controller");
	   
   	    int totalCount= boardContentService.adminBoardContentCount(boardCd);//총 게시글수
   	    int currentPage = Integer.parseInt(pageNum);//현재페이지
   	    int pageSize = 5;//한페이지에 보여질 게시글 수
   	    int startRow = ((currentPage - 1) * pageSize)+1;//보여질 게시글 번호
   		int pageCount=0;//총페이지수
   		int pageBlock=0;//블럭단위
   		int startPage=0;//처음페이지
   		int endPage =0;//마지막페이지    
   		int endRow=0;
   		List<BoardContentVO> contentList =null;
   		
		Map<String, Integer> map =new HashMap<String, Integer>();
		
		map.put("boardCd", boardCd);
	    
		if(totalCount > 0){	
		  endRow=startRow+pageSize - 1;
		contentList=boardContentService.allBoardContentList(map ,startRow,endRow);
		 
		 pageCount = totalCount / pageSize + (totalCount % pageSize == 0 ? 0 : 1);  			
			pageBlock = 1;
			startPage = ((currentPage/pageBlock) - (currentPage % pageBlock == 0 ? 1 : 0 )) * pageBlock + 1;		
			endPage = startPage + pageBlock - 1; 
			
			if(endPage > pageCount){
				
				        endPage = pageCount;
				        
			 }//(endPage > pageCount)끝
	 }
		System.out.println(startRow+":스타트로우"+endRow+":endRow");
		
		if(msg != null && msg.equals("ok")) {
			
			model.addAttribute("msg", "ok");
		}
		
		model.addAttribute("totalCount", totalCount);
		model.addAttribute("pageNum", pageNum);
		model.addAttribute("startRow", startRow);
		model.addAttribute("pageSize", pageSize);
		model.addAttribute("pageCount", pageCount);
		model.addAttribute("pageBlock", pageBlock);
		model.addAttribute("startPage", startPage);
		model.addAttribute("endPage", endPage);
		model.addAttribute("boardCd", boardCd);
		model.addAttribute("contentList", contentList);
		
		return "/admin/allBoardContentList";
	}
	
	@RequestMapping(value = "/updateBoardContentUseYn.do" )
	public String updateBoardContentUseYn(int contentId,int boardCd,String pageNum, ModelMap map) throws Exception { 
		
		logger.debug("----------- BoardContentController : updateBoardContentUseYn.do start");
		
		System.out.println(contentId+"contentId");
		
		boardContentService.updateBoardContentUseYn(contentId);
		map.put("boardCd", boardCd);
		map.put("pageNum", pageNum);
		map.put("msg","ok");
		return "redirect:/allBoardContentList.do";
	}
	

	@RequestMapping(value = "/fileDown.do" , method=RequestMethod.GET)
	public String fileDown(int contentId,HttpServletResponse response) throws Exception {
		
		logger.debug("----------- BoardContentController : fileDown.do start");
		
		BoardContentFileVO FileVO=boardContentService.selectFile(contentId);
		System.out.println(FileVO.getOrgFileName()+"파일 이름");
		String originalFileName=FileVO.getOrgFileName();
		String storedFileName= FileVO.getStoredFileName();
		byte fileByte[]=org.apache.commons.io.FileUtils.readFileToByteArray(new File("C:\\upload\\temp\\"+storedFileName));
		response.setContentType("application/octet-stream");
		response.setContentLength(fileByte.length);
		response.setHeader("Content-Disposition",  "attachment; fileName=\""+URLEncoder.encode(originalFileName, "UTF-8")+"\";");
		response.getOutputStream().write(fileByte);
		response.getOutputStream().flush();
		response.getOutputStream().close();
		
		return "/boardContentInfo.do?contentId="+contentId;
	}
	
}
