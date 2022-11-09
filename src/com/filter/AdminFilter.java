package com.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.entity.Admin;

public class AdminFilter implements Filter {

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		// TODO Auto-generated method stub
		HttpServletRequest req = (HttpServletRequest) request;
		HttpSession session = req.getSession();
		Admin admin = (Admin) session.getAttribute("admin");
		if (admin != null) {
			chain.doFilter(request, response);
		} else {
			
			String path = req.getServletPath();

			if (path.endsWith("adminlogin.jsp") || path.endsWith("login") || path.endsWith("index.jsp")) {
                chain.doFilter(request, response);
			}else {
						request.setAttribute("mess", "请先登录！！！");
				req.getRequestDispatcher("/jsp/admin/adminlogin.jsp").forward(request, response);
				
			}

		}

	}

}
