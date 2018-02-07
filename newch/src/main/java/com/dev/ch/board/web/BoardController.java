package com.dev.ch.board.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BoardController {

	@RequestMapping(value="/board/showNotice.do")
	public String showNotice(){
		return "board/notice_list";
	}
	
}
