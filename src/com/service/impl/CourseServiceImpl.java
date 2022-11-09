package com.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.dao.CourseDao;
import com.entity.Course;
import com.service.CourseService;

@Service

public class CourseServiceImpl implements CourseService {

	@Autowired
	private CourseDao courseDao;
	
	@Override
	public String selectCourses(Model model) {
		// TODO Auto-generated method stub
		
		List<Course> courses = courseDao.selectCourses();
		model.addAttribute("courses",courses);
		return "user/courseselect";
	}

}
