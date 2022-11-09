package com.service;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.entity.Course;

@Service

public interface CourseService {
	
	String selectCourses( Model model);
	
	
}
