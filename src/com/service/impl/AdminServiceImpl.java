
package com.service.impl;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.dao.AdminDao;
import com.entity.Admin;
import com.service.AdminService;

@Service

public class AdminServiceImpl implements AdminService {


	
	@Autowired	//自动注入，调用该repository
	private AdminDao adminDao;

	@Override
	public String login(Admin admin, Model model, HttpSession session) {
		// TODO Auto-generated method stub
		Admin a = adminDao.login(admin);
		if(a!=null)
		{
			session.setAttribute("admin", a);
			return "admin/adminmanager";
		}else {
			model.addAttribute("mess", "用户名或密码错误!!!");
			return "admin/adminlogin";
		}
		
	}
	


}
