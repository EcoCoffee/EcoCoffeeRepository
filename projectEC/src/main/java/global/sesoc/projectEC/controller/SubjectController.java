package global.sesoc.projectEC.controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

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
	
	@RequestMapping (value="service", method=RequestMethod.GET)
	public String service() {
		
		return "menu/service";
	}
}
