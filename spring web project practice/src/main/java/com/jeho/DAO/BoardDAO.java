package com.jeho.DAO;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.jeho.DTO.BoardDTO;

@Component
public class BoardDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	public List<BoardDTO> boardList() {
		
		return sqlSession.selectList("board.boardList");
	}

}
