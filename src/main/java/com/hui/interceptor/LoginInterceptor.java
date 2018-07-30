package com.hui.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;

public class LoginInterceptor implements HandlerInterceptor{

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
	
		String url = request.getRequestURI();
		System.out.println(url);
		if(url.endsWith("ogin")) {
			return true;
		}
		HttpSession session = request.getSession();
		if (session.getAttribute("crmStaff") == null) {
			request.getRequestDispatcher("/WEB-INF/pages/login.jsp").
			forward(request, response);
			return false;
		}
		return true;
	}
}
