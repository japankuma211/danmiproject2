
package com.danmi.test.brd.util;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.danmi.test.brd.service.BoardContentVO;

@Component("fileUtils")
public class FileUtils {
	
	private static final Logger logger = LoggerFactory.getLogger(FileUtils.class);
	
	private static final String filePath = "C:\\upload\\temp\\";
	
    private static 	HttpServletRequest request;
	
	
	
	public List<Map<String, Object>> parseInsertFileInfo(BoardContentVO boardVO, MultipartHttpServletRequest mpRequest ,HttpServletRequest request) throws Exception {
		
		logger.debug("-----FileUtils  parseInsertFileInfo start ");
		
		/*
			Iterator은 데이터들의 집합체? 에서 컬렉션으로부터 정보를 얻어올 수 있는 인터페이스입니다.
			List나 배열은 순차적으로 데이터의 접근이 가능하지만, Map등의 클래스들은 순차적으로 접근할 수가 없습니다.
			Iterator을 이용하여 Map에 있는 데이터들을 while문을 이용하여 순차적으로 접근합니다.
		*/
		
		//   String root_path = request.getServletContext().getRealPath("/webapp/upload/");  
       
		  
		
		Iterator<String> iterator = mpRequest.getFileNames();
		
		MultipartFile multipartFile = null;
		String originalFileName = null;
		String originalFileExtension = null;
		String storedFileName = null;
		
		List<Map<String, Object>> list = new ArrayList<Map<String,Object>>();
		Map<String, Object> listMap = null;
		
		int contentId = boardVO.getContentId();//게시글번호
		
		File file = new File(filePath);
	//	File file =new File(root_path);
		if(file.exists() == false) {
			file.mkdirs();
		}
		
		while(iterator.hasNext()) {
			multipartFile = mpRequest.getFile(iterator.next());
			if(multipartFile.isEmpty() == false) {
				originalFileName = multipartFile.getOriginalFilename();
				originalFileExtension = originalFileName.substring(originalFileName.lastIndexOf("."));
				storedFileName = getRandomString() + originalFileExtension;
				logger.debug("================== file start ==================");
	            logger.debug("파일 실제 이름: "+originalFileName);
	            logger.debug("파일 저장 이름: "+storedFileName);
	            logger.debug("파일 크기: "+multipartFile.getSize());
	            logger.debug("게시글 번호:"+contentId);
	            logger.debug("================== file   END ==================");
                
              //  file = new File(root_path+storedFileName);
			   file = new File(filePath + storedFileName);
				multipartFile.transferTo(file);
				listMap = new HashMap<String, Object>();
				listMap.put("contentId", contentId);
				listMap.put("orgFileName", originalFileName);
				listMap.put("storedFileName", storedFileName);
				listMap.put("fileSize", multipartFile.getSize());
				list.add(listMap);
			}
		}
		return list;
	}
	
	public static String getRandomString() {
		return UUID.randomUUID().toString().replaceAll("-", "");
	}

}
