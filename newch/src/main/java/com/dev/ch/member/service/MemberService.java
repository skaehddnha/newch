package com.dev.ch.member.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service("memberService")
public class MemberService {
	@Resource(name="memberDao")
	private MemberDao memberDao;
	public List<?> selectMemberList(){
		return memberDao.selectMemberList();
	}
}
