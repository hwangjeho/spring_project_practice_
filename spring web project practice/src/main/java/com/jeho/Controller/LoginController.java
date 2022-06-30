package com.jeho.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.jeho.DTO.LoginDTO;
import com.jeho.Service.LoginService;


@Controller
public class LoginController {
	
	@Autowired
	private LoginService loginService;
	
	@PostMapping("/join.do")
	public void join(@ModelAttribute LoginDTO loginDTO, HttpServletResponse response) throws Exception{
		response.setCharacterEncoding("UTF-8");
		
		System.out.println(loginDTO);
		
		int result = 0;
		
		result = loginService.join(loginDTO);
		
		if(result == 1) {
			response.getWriter().println("<script>alert('회원 가입에 성공했습니다.'); location.href='index.do';</script>");
		} else {
			response.getWriter().println("<script>alert('회원 가입에 실패했습니다.'); location.href='index.do';</script>");
		}
	}
	
	@PostMapping("/login.do")
	public String login(@ModelAttribute LoginDTO loginDTO, HttpSession session) {
		int result = 0;
		result = loginService.login(loginDTO);
		
		if(result == 1) {
			session.setAttribute("u_id", loginDTO.getU_id());
			System.out.println("로그인 성공");
		} else {
			System.out.println("로그인 실패");
		}
		return "redirect:/index.do";
		
	}
	
	@GetMapping("/logout.do")
	public String logout(HttpSession session) {
		
		if(session.getAttribute("u_id") != null) {
			session.removeAttribute("u_id");
		}
		
		return "redirect:/index.do";
	}
}
