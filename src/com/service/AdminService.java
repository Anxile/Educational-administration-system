package com.service;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.entity.Admin;

@Service

public interface AdminService {

	String login(Admin admin,Model model,HttpSession session);
		
}
