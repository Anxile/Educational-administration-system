package com.service;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.entity.Student;

@Service

public interface StudentService {
	
	String login(Student student,Model model,HttpSession session);
	String stuinfadd(Student student,Model model);
	String stuinfoselectById(int sid,Model model);
	String stujump(int sid,Student student);

}
