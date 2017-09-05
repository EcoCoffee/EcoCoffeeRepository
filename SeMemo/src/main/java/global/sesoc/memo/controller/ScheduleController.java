package global.sesoc.memo.controller;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ScheduleController {

	@Autowired
	SqlSession sqlsession;
	
	 // 캘린더 이동처리
	  @RequestMapping(value="schdule", method=RequestMethod.GET)
	  public String schdule(Model model, HttpSession session) {
		  //로그인 한 아이디와 이름 받고
		  String loginId = (String)session.getAttribute("loginId");
		  String loginName = (String)session.getAttribute("loginName");
		  //모델에 담고
		model.addAttribute("custid", loginId);
	    model.addAttribute("custname", loginName);
	    return "schdule";
	  }
	  
	  // test 이동처리
	  @RequestMapping(value="test", method=RequestMethod.GET)
	  public String test(Model model, HttpSession session) {
		  //로그인 한 아이디와 이름 받고
		  String loginId = (String)session.getAttribute("loginId");
		  String loginName = (String)session.getAttribute("loginName");
		  //모델에 담고
		model.addAttribute("custid", loginId);
	    model.addAttribute("custname", loginName);
	    return "test";
	  }	  
}
