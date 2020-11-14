
package com.danmi.test.brd.service.impl;

import java.util.List;
import java.util.Map;

import com.danmi.test.brd.service.BoardVO;

import egovframework.rte.psl.dataaccess.mapper.Mapper;

@Mapper("boardMapper")
public interface BoardMapper {
	
	BoardVO selectTBrd(int boardCd) throws Exception;
    
	List<BoardVO> selecList( Map<String, Integer> map) throws Exception;
	
	void deleteBoard(int boardCd) throws Exception;
	
	void insertBoard(BoardVO boardVO) throws Exception;
	
	BoardVO upadateBoard(BoardVO boardVO) throws Exception; 
}
