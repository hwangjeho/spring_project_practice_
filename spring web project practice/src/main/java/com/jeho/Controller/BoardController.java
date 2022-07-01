package com.jeho.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jeho.DTO.BoardDTO;
import com.jeho.Service.BoardService;

@Controller
public class BoardController {
	
	@Autowired
	private BoardService boardService;
	
	@GetMapping("/index.do")
	public String index() {
		
		return "index";
	}
	
	@RequestMapping("/board.do")
	public ModelAndView board() {
		ModelAndView mv = new ModelAndView("board");
		
		List<BoardDTO> boardList = boardService.boardList();
		mv.addObject("list", boardList);
				
		return mv;
	}
}
