package global.sesoc.memo.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import global.sesoc.memo.dao.MemoDAO;
import global.sesoc.memo.vo.MemberVO;
import global.sesoc.memo.vo.MemoVO;

/**
 * 쪽지 보내기, 보낸 쪽지, 받은 쪽지 기능을 수행하는 컨트롤러
 */
@Controller
public class MemoController {
	@Autowired
	SqlSession sqlsession;
	
	/**
	 * 보내기 화면 처리
	 */
	@RequestMapping(value="send", method=RequestMethod.GET)
	public String send(Model model) {
		MemoDAO dao = sqlsession.getMapper(MemoDAO.class);
		ArrayList<MemberVO> userlist = dao.userlist();
		/*System.out.println(userlist);*/
		model.addAttribute("userlist", userlist);
		
		return "send";
	}
	
	/**
	 * 쪽지 보내기 기능 처리 
	 */
	@RequestMapping(value="send", method=RequestMethod.POST)
	public String send(MemoVO memo, HttpSession session) {
		/*System.out.println(memo);*/
		MemoDAO dao = sqlsession.getMapper(MemoDAO.class);
		String fromId = (String)session.getAttribute("loginId");
		memo.setFromId(fromId);
		System.out.println(memo);
		int result = dao.send(memo);
		System.out.println(result);
		
		return "redirect:/sentMemos";
	}
	
	/**
	 * 보낸 쪽지 목록 처리 
	 */
	@RequestMapping(value="sentMemos", method=RequestMethod.GET)
	public String sentMemos(Model model, HttpSession session) {
		MemoDAO dao = sqlsession.getMapper(MemoDAO.class);
		String fromId=(String)session.getAttribute("loginId");
		ArrayList<MemoVO> memolist = dao.selectmemo(fromId);
		System.out.println(memolist);
		if(memolist.size()>0){
			model.addAttribute("memolist", memolist);
		}
		return "sentMemos";
	}
	
	/**
	 * 받은 쪽지 목록 처리 
	 */
	@RequestMapping(value="receivedMemos", method=RequestMethod.GET)
	public String receivedMemos(Model model, HttpSession session) {
		MemoDAO dao = sqlsession.getMapper(MemoDAO.class);
		String fromId=(String)session.getAttribute("loginId");
		ArrayList<MemoVO> receivelist = dao.receivedmemo(fromId);
		System.out.println(receivelist);
		if(receivelist.size()>0){
			model.addAttribute("receivelist", receivelist);
		}
		return "receivedMemos";
	}
}
