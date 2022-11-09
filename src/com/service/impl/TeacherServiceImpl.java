package com.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;


import com.dao.TeacherDao;
import com.entity.Student;

import com.entity.Teacher;
import com.service.StudentService;

import com.service.TeacherService;


@Service
public class TeacherServiceImpl implements TeacherService {

	@Autowired
	private TeacherDao teacherDao;

	@Override
	public String comment(Teacher teacher, Model model) {
		// TODO Auto-generated method stub
		
			int a = teacher.getTid();
			Teacher teacher2 = new Teacher();
			
			String s = teacher.getTmark();
			String s1 = "及格";
			String s2 = "良好";
			String s3 = "优秀";
			String s4 = "满分";
			
				if(s==s1)
				{
					teacher.setTmark("及格");
				}
			
				else if(s==s2)
				{
					teacher.setTmark("良好");
				}
				else if(s==s3)
				{
					teacher.setTmark("优秀");
				}
				else if(s==s4)
				{
					teacher.setTmark("满分");
				}
				else
				{
					teacher.setTmark(null);
				}
			
			
			
			int n = teacherDao.comment(teacher.getTid());
			if(n>0)
			{
				model.addAttribute("mess","完成评教！！！");
				return "user/usermanager";
			}else
			{
				model.addAttribute("mess","评教失败！！！");
				return "user/usermanager";
			}
	}

	@Override
	public String selectTeachers(Model model) {
		// TODO Auto-generated method stub
		
		List<Teacher> teachers = teacherDao.selectTeachers();
		model.addAttribute("teacher",teachers);
		return "user/stucomment";
	}
	


}
