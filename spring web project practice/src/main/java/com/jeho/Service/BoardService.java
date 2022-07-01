package com.jeho.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jeho.DAO.BoardDAO;
import com.jeho.DTO.BoardDTO;

@Service
public class BoardService {

	@Autowired
	private BoardDAO boardDAO;
	
	public List<BoardDTO> boardList() {
		
		return boardDAO.boardList();
	}

}
