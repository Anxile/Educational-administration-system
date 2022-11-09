package com.dao;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;

import com.entity.Admin;

@Repository		//将接口的一个实现类交给Spring管理
@Mapper
//使用@mapper后，不需要在spring配置中设置扫描地址
//通过mapper.xml里面的namespace属性对应相关的mapper类
//spring将动态的生成Bean后注入到ServiceImpl中


//在使用Mybatis持久层框架来操作数据库时，我们可以使用@Mapper注解来将Mapper接口类交给Spring进行管理。
public interface AdminDao {
	
	 Admin login(Admin admin);
	

}

//@Repository和@Controller、@Service、@Component的作用差不多，都是把对象交给spring管理
//注释后放入spring容器中