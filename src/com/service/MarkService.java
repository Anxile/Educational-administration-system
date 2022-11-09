package com.service;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.entity.Mark;

@Service

public interface MarkService {
	
	String selectMark(Model model);

}
