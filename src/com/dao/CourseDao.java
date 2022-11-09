package com.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.entity.Course;

@Repository
@Mapper

public interface CourseDao {
	
	List<Course> selectCourses();
	

}
