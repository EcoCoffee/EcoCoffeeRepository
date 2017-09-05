package global.sesoc.eco.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

/**
 * 사용자 로그인 확인 인터셉터. HandlerInterceptorAdapter를 상속받아서 정의.
 */
public class LoginInterceptor extends HandlerInterceptorAdapter {
	private static final Logger logger = LoggerFactory.getLogger(LoginInterceptor.class);

	//콘트롤러의 메서드 실행 전에 처리
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		if(request.getSession().getAttribute("loginId") == null) {
			response.sendRedirect("./");
			System.out.println("인터셉터 경유했음");
			return false;
		}
		return true;
	}
	

}
