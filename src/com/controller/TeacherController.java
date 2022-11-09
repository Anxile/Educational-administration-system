package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


import com.entity.Teacher;

import com.service.TeacherService;

@Controller
@RequestMapping("teacher")

public class TeacherController {
	
	@Autowired
	private TeacherService teacherService;
	
	@RequestMapping("comment")
	public String comment(Teacher teacher,Model model)
	{
		return teacherService.comment(teacher, model);
	}

	@RequestMapping("selectTeachers")
	
	public String selectTeachers(Model model)
	{
		return teacherService.selectTeachers(model);
	}
	
}
