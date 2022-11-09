package com.service.impl;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.dao.StudentDao;
import com.entity.Student;
import com.service.StudentService;

@Service

public class StudentServiceImpl implements StudentService {

	@Autowired
	private StudentDao studentDao;
	
	@Override
	public String login(Student student, Model model, HttpSession session) {
		// TODO Auto-generated method stub
		Student stu = studentDao.login(student);
		if(stu!=null)
		{
			session.setAttribute("student", stu);
			return "user/usermanager";
		}else 
		{
			model.addAttribute("mess", "用户名或密码错误！！！");
			return "user/userlogin";
		}
		
		
	}

	
	@Override
	public String stuinfadd(Student student, Model model) {
		// TODO Auto-generated method stub
		try {
			
			Student stu = studentDao.stuinfadd(student);
			model.addAttribute("student",student);
			model.addAttribute("mess", "添加成功！！！");
			
		} catch (Exception e) {
			//model.addAttribute("mess","添加失败！！！");
			//e.printStackTrace();
		}
		return "user/studentinfo";
	}

	@Override
	public String stuinfoselectById(int sid, Model model) {
		// TODO Auto-generated method stub
		Student student1 = studentDao.stuinfoselectById(sid);
		model.addAttribute("student", student1);
		return "user/stuinfoselect";
	}

	@Override
	public String stujump(int sid,Student student) {
		// TODO Auto-generated method stub
		Student i = studentDao.stujump(sid);
		return "user/studentinfo";
	}

	
}
