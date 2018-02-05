package com.dev.ch.member.service;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.dev.ch.member.MemberVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {
	"file:src/main/resources/ch/config/dispatch-servlet.xml",
	"file:src/main/resources/ch/context/context-*.xml"
})
@WebAppConfiguration
public class MemberServiceTest {

	@Autowired
	private MemberService service;
	
	@Test
	public void 객체생성(){
		List<MemberVO> list = (List<MemberVO>) service.selectMemberList();
		System.out.println(list);
	}
		
		
}