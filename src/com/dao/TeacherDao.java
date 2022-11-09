package com.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;



import com.entity.Teacher;

@Repository
@Mapper

public interface TeacherDao {
	
	List<Teacher> selectTeachers();
	int  comment(int tid);
		
}
