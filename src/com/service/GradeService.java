package com.service;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.entity.Grade;

@Service

public interface GradeService {
	
	String gradeadd(Grade grade,Model model);

}
