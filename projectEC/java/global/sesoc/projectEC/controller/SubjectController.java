package global.sesoc.projectEC.controller;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import global.sesoc.projectEC.dao.MemberMapper;
import global.sesoc.projectEC.vo.Member;

@Controller
@RequestMapping("menu")
@SessionAttributes("menu")
public class SubjectController {
	
	@Autowired
	SqlSession sqlSession;

	@RequestMapping (value="product", method=RequestMethod.GET)
	public String product() {
		
		return "menu/product";
	}
	
	@RequestMapping (value="map", method=RequestMethod.GET)
	public String map() {
		
		return "menu/map";
	}
	
	@RequestMapping (value="service", method=RequestMethod.GET)
	public String service() {
		
		return "menu/service";
	}
	
	@RequestMapping (value="schedule", method=RequestMethod.GET)
	public String schedule(Model model, HttpSession session) {
		String loginId = (String)session.getAttribute("loginId");
		MemberMapper dao = sqlSession.getMapper(MemberMapper.class);
		Member member = dao.selectMember(loginId);
		String cafeid = member.getCustid();
		String cafename = member.getCustname();
		String cafetel = member.getTel();
		model.addAttribute("cafeid", cafeid);
		model.addAttribute("cafename", cafename);
		model.addAttribute("cafetel", cafetel);
		
		return "menu/schedule";
	}
}
