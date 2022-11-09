package com.dao;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.entity.Grade;

@Repository
@Mapper

public interface GradeDao {
	
	int gradeadd(Grade grade);

}
