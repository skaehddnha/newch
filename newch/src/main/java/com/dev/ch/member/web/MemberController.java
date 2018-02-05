package com.dev.ch.member.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dev.ch.member.MemberVO;
import com.dev.ch.member.service.MemberService;

@Controller
public class MemberController {

	@Resource(name="memberService")
	private MemberService memberService;
	
	@RequestMapping("/member/memberList.do")
	public String memberList
	(Model model) 
	{
		List<MemberVO> list = (List<MemberVO>) memberService.selectMemberList();
		model.addAttribute("list",list);
		return "member/list";
	}
}
