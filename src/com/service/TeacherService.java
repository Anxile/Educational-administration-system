package com.service;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;


import com.entity.Teacher;

@Service

public interface TeacherService {
	
	String selectTeachers(Model model);
	
	 String comment(Teacher teacher,Model model);
	

}
