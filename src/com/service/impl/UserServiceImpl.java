package com.service.impl;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.apache.commons.fileupload.FileUpload;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;

import com.dao.UserDao;
import com.entity.MyFile;
import com.entity.User;
import com.service.UserService;


@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao userDao;



	@Override
	public String useradd(User user, Model model) {
		// TODO Auto-generated method stub
				
		
		    if(user.getStuname() == null||user.getStuname() == "")
			{
		    	model.addAttribute("mess","添加失败，类型名称已存在!!!");
		    	return "forward:useradd";
			}else {
				 model.addAttribute("mess","添加成功!!!");
				 userDao.useradd(user);
				
				 return "admin/userAdd";
				 
			}
	}


	@Override
	public String selectUser(Model model) {
		// TODO Auto-generated method stub
		List<User> users = userDao.selectUser();
		model.addAttribute("users",users);
		return "admin/userShow";
	}

	@Override
	public String selectUserById(int sid, Model model) {
		// TODO Auto-generated method stub
		
		User  users = userDao.selectUserById(sid);
		model.addAttribute("users",users);
		return "admin/userpassupdate";
	}
		
	
	@Override
	public String updateUserById(User user,Model model) {
		// TODO Auto-generated method stub
		
		
		int i = userDao.updateUserById(user);
		if(i<0||i==0) {
			model.addAttribute("mess", "修改失败!!!");
		}else {
			model.addAttribute("mess", "修改成功!!!");
		}
		return "admin/usershow";
	}


	@Override
	public String deleteUserById(int sid, Model model) {
		
		int i=userDao.deleteUserById(sid);
		if(i<0||i==0) {
			model.addAttribute("mess", "删除失败!!!");
		}else {
			model.addAttribute("mess", "删除成功!!!");
		}
		
		return "forward:selectUser";
		
	}

	

	public String fileUpload(MultipartFile upfile,HttpServletRequest request) {
		// TODO Auto-generated method stub
		String realPath = request.getServletContext().getRealPath("uploadfile");
		System.out.println(realPath);
		File pathFile = new File(realPath);
		if(!pathFile.exists())
		{
			pathFile.mkdirs();
		}
		String filename = upfile.getOriginalFilename();
		File targetFile = new File(realPath,filename);
	
		try {
			upfile.transferTo(targetFile);
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
		return filename;
	}
	public String upFile(MyFile myFile,Model model,MultipartFile upfile,HttpServletRequest request)
	{
		if(!upfile.isEmpty())
		{
			String filename = fileUpload(upfile,request);
			myFile.setStupic(filename);
			model.addAttribute("filename",filename);
			userDao.upFile(myFile);
		}
		
		
		return "user/studentinfo";
	}


	@Override
	public String getmain(Model model, HttpSession session) {
		// TODO Auto-generated method stub
		
		
		return "user/usermain";
	}

	

}
