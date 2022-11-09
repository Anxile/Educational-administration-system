package com.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;

import com.entity.Admin;
import com.entity.Grade;

public class GradeInterceptor implements HandlerInterceptor {
	
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		HttpSession session = request.getSession();
		Admin admin=(Admin)session.getAttribute("admin");
		if(admin!=null) {
			return true;
		}else {
			request.setAttribute("mess", "请你先登录！");
			request.getRequestDispatcher("/admin/adminlogin").forward(request, response);
			return false;
		}
	}

}
