package com.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.dao.GradeDao;
import com.entity.Grade;
import com.service.GradeService;

@Service

public class GradeServiceImpl implements GradeService{
	
	@Autowired
	private GradeDao gradeDao;

	@Override
	public String gradeadd(Grade grade, Model model) {
		// TODO Auto-generated method stub
		
		int sn = gradeDao.gradeadd(grade);
		
		if(sn<=0)
		{
			model.addAttribute("mess","输入有误！！！");
			return "admin/gradeAdd";
		}
		else {
			model.addAttribute("mess","输入成功！！！");
			return "admin/gradeAdd";
		}
		
		
	}
	
	
	

}
