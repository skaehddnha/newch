package com.dev.ch.common.web;

import java.util.Enumeration;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CommonController {
	
//	@Resource(name="memberService")
//	private MemberService memberService;

	@RequestMapping(value="/common/main.do")
	public String main() {
		return "main/main";
	}
	
	@RequestMapping(value="/popup/common/jusoPopup.do")
	public String jusoPopup() {
		return "popup/common/jusoPopup";
	}
	
	
	
	/**
	 * 세션값을 확인하는 메서드.
	 * @param req
	 * @return
	 */
	@RequestMapping(value="/common/showSession.do")
	public ModelAndView showSession(HttpServletRequest req){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("jsonView");
		
		HttpSession session = req.getSession();
		Enumeration<String> em = session.getAttributeNames();
		  
		while(em.hasMoreElements()){
			String getem = em.nextElement();
			mav.addObject(getem, session.getAttribute(getem));
			String output = "session :::: " + getem + " : " + session.getAttribute(getem);
			System.out.println(output);
		}
		      
		return mav;
	}
	
//	@RequestMapping(value="/common/showSessionAttribute.do")
//	public ModelAndView showSessionAttribute(HttpServletRequest request, HttpServletResponse response) throws Exception{
//		ModelAndView mav = new ModelAndView();
//		mav.setViewName("jsonView");
//		
//		MemberVO mvo = (MemberVO) request.getSession().getAttribute("mvo");
//		int num = 0;
//		if(mvo!=null){
//			num = memberService.teamSubCnt(mvo.getId());
//		}
//		return mav;
//	}
}
