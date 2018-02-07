package com.dev.ch.member.web;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

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
	
	@RequestMapping(value="/member/registerMember.do")
	public String registerMember
	( Model model){
		
		List<String> telList = new ArrayList<String>();
		telList.add("010");
		telList.add("011");
		telList.add("016");
		telList.add("018");
		telList.add("019");
		
		model.addAttribute("telList", telList);
		
		
		return "member/register";
	}
}
