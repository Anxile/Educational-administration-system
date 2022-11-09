package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


import com.entity.Grade;
import com.service.GradeService;

@Controller
@RequestMapping("grade")

public class GradeController {

	
	@Autowired
	private GradeService gradeService;
	
	@RequestMapping("gradeadd")
	public String gradeadd(Grade grade,Model model)
	{
		return gradeService.gradeadd(grade, model);
	}
	
}
