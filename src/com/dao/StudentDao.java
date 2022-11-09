package com.dao;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.entity.Student;

@Repository
@Mapper
public interface StudentDao {
	
	Student login(Student student);
	Student stuinfadd(Student student);
	Student stuinfoselectById(int sid);
	Student stujump(int sid);
	
}
