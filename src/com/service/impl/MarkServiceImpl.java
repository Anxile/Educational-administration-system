package com.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.dao.MarkDao;
import com.entity.Mark;
import com.service.MarkService;

@Service

public class MarkServiceImpl implements MarkService{

	@Autowired 
	private MarkDao markDao;
	
	@Override
	public String selectMark(Model model) {
		// TODO Auto-generated method stub
		
		List<Mark> marks = markDao.selectMark();
		model.addAttribute("marks",marks);
		return "user/markselect";
	}

}
