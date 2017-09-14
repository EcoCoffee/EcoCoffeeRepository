package global.sesoc.projectEC.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import global.sesoc.projectEC.HomeController;
import global.sesoc.projectEC.dao.MemberMapper;
import global.sesoc.projectEC.dao.ReservationDAO;
import global.sesoc.projectEC.vo.Member;
import global.sesoc.projectEC.vo.ReservationVO;

@Controller
public class ScheduleController {
	private static final Logger logger = LoggerFactory.getLogger(ScheduleController.class);
	@Autowired
	SqlSession sqlsession;
	  
	// memberMap들어가기 , ajax 요청을 받았으므로 제이슨 데이터를 작성해서 리턴함
	   @RequestMapping(value = "menu/getMap", method = RequestMethod.GET)
	   public @ResponseBody ArrayList<Member> getMap() {

		   System.out.println("=======================+++++++++++++++++");
	      logger.debug("memberMap시작");
	      MemberMapper mapper = sqlsession.getMapper(MemberMapper.class);
	      ArrayList<Member> list = mapper.selectAll();
	      logger.debug("list:{}", list);
	      return list;
	   }
	
	
	  // 스케줄 저장
	  //@ResponseBody
	  @RequestMapping(value="menu/insertschedule", method=RequestMethod.POST)
	  public String insertschdule(ReservationVO reservation, Model model, HttpSession session) {
		  System.out.println(reservation);
		  
		ReservationDAO dao = sqlsession.getMapper(ReservationDAO.class);
		int result = dao.schduleAdd(reservation);
		System.out.println(result);
	    return "menu/schedule";
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
