package com.jeho.DAO;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.jeho.DTO.LoginDTO;

@Component
public class LoginDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	public int join(LoginDTO loginDTO) {
		
		return sqlSession.insert("login.join", loginDTO);
	}

	public int login(LoginDTO loginDTO) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("login.login", loginDTO);
	}

}
