package com.controller;

import javax.servlet.http.HttpSession;

import org.apache.tomcat.util.descriptor.web.LoginConfig;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.entity.Student;
import com.service.StudentService;

@Controller
@RequestMapping("student")
public class StudentController {

	@Autowired
	private StudentService studentService;
	
	@RequestMapping("login")
	public String login(Student student,Model model,HttpSession session)
	{
		return studentService.login(student,model,session);
	}
	
	@RequestMapping("stuinfadd")
	public String stuinfadd(Student student, Model model) {
		{
			return studentService.stuinfadd(student, model);
		}	
}
	@RequestMapping("stuinfoselectById")
	public String stuinfoselectById(int sid,Model model)
	{
		return studentService.stuinfoselectById(sid, model);
	}
	
	
	
}