package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.entity.Course;
import com.service.CourseService;

@Controller
@RequestMapping("course")

public class CourseController {

	@Autowired 
	private CourseService courseService;
	
	@RequestMapping("selectCourses")
	public String selectCourses(Model model)
	{
		return courseService.selectCourses(model);
	}
	
	
}
