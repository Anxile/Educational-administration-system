package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.service.MarkService;

@Controller
@RequestMapping("mark")

public class MarkController {
	
	@Autowired 
	private MarkService markService;
	
	@RequestMapping("selectMark")
	
	public String selectMark(Model model)
	{
		return markService.selectMark(model);
	}

}
