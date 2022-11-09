package com.service;



import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;

import com.entity.MyFile;
import com.entity.User;

@Service

public interface UserService {
	
	
	String useradd(User user,Model model);
	String selectUser(Model model);
	String updateUserById(User user,Model model);
	String selectUserById(int sid,Model model);
	String deleteUserById(int sid,Model model);
	String upFile(MyFile myFile,Model model,MultipartFile upfile,HttpServletRequest request);
	String getmain(Model model,HttpSession session);
}
