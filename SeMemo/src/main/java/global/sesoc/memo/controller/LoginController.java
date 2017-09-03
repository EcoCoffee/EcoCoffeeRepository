package global.sesoc.memo.controller;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import global.sesoc.memo.dao.MemoDAO;
import global.sesoc.memo.vo.MemberVO;


/**
 * 로그인, 로그아웃 처리용 컨트롤러
 */
@Controller
public class LoginController {
@Autowired
SqlSession sqlsession;
	/**
	 * 홈 화면 처리
	 */
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String home() {
		return "home";
	}
	
	/**
	 * 로그인 처리
	 * */
	
	@RequestMapping(value="login", method=RequestMethod.POST)
	public String login(String id, String password, HttpSession session) {
		MemoDAO dao = sqlsession.getMapper(MemoDAO.class);
		MemberVO cmember = new MemberVO();
		cmember.setId(id);
		cmember.setPassword(password);
		MemberVO member = dao.login(cmember);
		if(member!=null){
			session.setAttribute("loginId", id);
			session.setAttribute("loginName", member.getName());
			return "redirect:/receivedMemos"; 
		}
		else{
			return "redirect:/";
		}
	}
	
	/**
	 * 로그아웃 처리 
	 */
	@RequestMapping(value="logout", method=RequestMethod.GET)
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
}
