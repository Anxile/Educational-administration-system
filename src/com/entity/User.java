package com.entity;

import org.springframework.stereotype.Component;

/*
 * 用户实体类
 * @author 
 * 
 */

@Component

public class User {

		private int sid;//用户ID，自增，主键
		private String stuname;//用户名
		private String stupass;//密码
		public int getSid() {
			return sid;
		}
		public void setSid(int sid) {
			this.sid = sid;
		}
		public String getStuname() {
			return stuname;
		}
		public void setStuname(String stuname) {
			this.stuname = stuname;
		}
		public String getStupass() {
			return stupass;
		}
		public void setStupass(String stupass) {
			this.stupass = stupass;
		}
		
		
		
	
}
