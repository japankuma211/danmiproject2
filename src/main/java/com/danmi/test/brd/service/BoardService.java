
package com.danmi.test.brd.service;

import java.util.List;
import java.util.Map;


public interface BoardService {

	
	public BoardVO selectTBrd(int boardCd) throws Exception;
	
	public List<BoardVO> selectList(Map<String, Integer> map) throws Exception;

	public void insertBoard(BoardVO boardVO) throws Exception;

	public void deleteBoard(int boardCd) throws Exception;

	public int updateBoard(BoardVO boardVO) throws Exception;

	
}
