package global.sesoc.projectEC.controller;


import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import global.sesoc.projectEC.dao.ReservationDAO;
import global.sesoc.projectEC.vo.ReservationVO;


@Controller
public class ScheduleController {

	@Autowired
	SqlSession sqlsession;
	  
	  // schedule 이동처리
	  @RequestMapping(value="schedule", method=RequestMethod.GET)
	  public String test(HttpSession session) {
		 String loginId = (String)session.getAttribute("loginId");
		  //로그인 한 아이디와 이름 받고
		  
	    return "schedule";
	  }
	  
	  // 스케줄 저장
	  @ResponseBody
	  @RequestMapping(value="insertschdule", method=RequestMethod.POST)
	  public String insertschdule(ReservationVO reservation, Model model, HttpSession session) {
		  System.out.println(reservation);
		  
		ReservationDAO dao = sqlsession.getMapper(ReservationDAO.class);
		int result = dao.schduleAdd(reservation);
		System.out.println(result);
	    return "test";
	  }	  	  

	 /* // 스케줄 읽어오기
	  @ResponseBody
	  @RequestMapping(value="schduleRead", method=RequestMethod.POST)
	  public String schduleRead(Model model, HttpSession session) {
		  //로그인 한 아이디와 이름 받고
		  
		  String loginId = (String)session.getAttribute("loginId");
		  String loginName = (String)session.getAttribute("loginName");
		  //모델에 담고
		model.addAttribute("custid", loginId);
	    model.addAttribute("custname", loginName);
		ReservationDAO dao = sqlsession.getMapper(ReservationDAO.class);
	    ArrayList<ReservationVO> reserlist = dao.readReservation();
	    model.addAttribute("reserlist", reserlist);
		return "test";
	  }	  */
}
