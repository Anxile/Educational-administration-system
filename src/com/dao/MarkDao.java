package com.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.entity.Mark;

@Repository
@Mapper

public interface MarkDao {
	
	List<Mark> selectMark();

}
