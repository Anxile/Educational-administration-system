package com.entity;

import org.springframework.stereotype.Component;

@Component
public class Student {
	
	private int sid;
	private String stuname;
	private String stupass;
	private String stumajor;
	private String stucollege;
	private String stusex;
	private String stubirth;
	private String stuphone;
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
	public String getStumajor() {
		return stumajor;
	}
	public void setStumajor(String stumajor) {
		this.stumajor = stumajor;
	}
	public String getStucollege() {
		return stucollege;
	}
	public void setStucollege(String stucollege) {
		this.stucollege = stucollege;
	}
	public String getStusex() {
		return stusex;
	}
	public void setStusex(String stusex) {
		this.stusex = stusex;
	}
	public String getStubirth() {
		return stubirth;
	}
	public void setStubirth(String stubirth) {
		this.stubirth = stubirth;
	}
	public String getStuphone() {
		return stuphone;
	}
	public void setStuphone(String stuphone) {
		this.stuphone = stuphone;
	}

}
