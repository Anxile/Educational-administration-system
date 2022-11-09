package com.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.entity.MyFile;
import com.entity.User;

@Repository
@Mapper
public interface UserDao {
	
	 User login(User user);
	 int useradd(User user);
	 List<User> selectUser();
	 int updateUserById(User user);
	 User selectUserById(int sid);
	 int deleteUserById(int sid);
	 
	 //文件上传
	 int upFile(MyFile myFile);
}
