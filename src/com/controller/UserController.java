package com.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.entity.MyFile;
import com.entity.Student;
import com.entity.User;
import com.service.AdminService;
import com.service.UserService;

@Controller
@RequestMapping("user")

public class UserController {
	
	@Autowired
	private UserService userService;
	
	
	
	@RequestMapping("useradd")
	public String useradd(User user,Model model)
	{
		String add = userService.useradd(user, model);
		return add;
		
	}
	
	@RequestMapping("selectUser")
	public String selectUser(Model model)
	{
		return userService.selectUser(model);
	}
		
	@RequestMapping("selectUserById")
	public String selectUserById(int sid,Model model)
	{
		return userService.selectUserById(sid, model);
	}
	
	
	@RequestMapping("updateUserById")
	public String updateUserById(User user,Model model)
	{
		userService.updateUserById(user,model);
		return userService.selectUser(model);
		
	}
	
	@RequestMapping("deleteUserById")
	public String deleteUserById(int sid,Model model)
	{

		return userService.deleteUserById(sid, model);
		
	}
	
	@RequestMapping("upOneFile")
	public String upOneFile(MyFile myFile,Model model,MultipartFile upfile,HttpServletRequest request)
	{
		return userService.upFile(myFile, model, upfile, request);
	}
	
	@RequestMapping("i18n")
	String  i18n()
	{
		return "forward:getmain";
	}
	
	@RequestMapping("getmain")
	public String getmain(Model model,HttpSession session)
	{
		return userService.getmain(model, session);
	}
	
	
}
