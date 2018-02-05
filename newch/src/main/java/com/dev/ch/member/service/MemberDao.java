package com.dev.ch.member.service;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.dev.ch.common.dao.AbstractDAO;

@Repository(value="memberDao")
public class MemberDao extends AbstractDAO {
	public List<?> selectMemberList(){
		return list("member.selectMember");
	}
}
