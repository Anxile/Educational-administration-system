package com.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.entity.Admin;
import com.service.AdminService;


@Controller						//标记这个类是一个 控制器，可以把处理过的数据封装成一个Model
@RequestMapping("admin")		//定义URL请求和Controller方法之间的映射，使当前控制器可以被外界访问
public class AdminController {
	
	
	@Autowired	//自动注入，调用该service
	private AdminService adminService;
	
	@RequestMapping("login")	//使用@RequestMapping 注解的方法才是真正处理请求的处理器
	public String login(Admin admin,Model model,HttpSession session)
	{
		String res = adminService.login(admin, model, session);		//获取由service层返回的结果
		return res;
		
	}

}
//Controller可以把用户请求的数据经过业务处理层处理之后封装成一个Model (请求数据相当于request?)
//然后再把该Model 返回给对应的View(jsp地址) 进行展示。