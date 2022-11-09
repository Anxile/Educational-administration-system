package com.entity;

import org.springframework.stereotype.Component;

@Component

public class Teacher {
	
	private int tid;
	private String tname;
	private String item;
	private String subject;
	private String tmark;
	public int getTid() {
		return tid;
	}
	public void setTid(int tid) {
		this.tid = tid;
	}
	public String getTname() {
		return tname;
	}
	public void setTname(String tname) {
		this.tname = tname;
	}
	public String getItem() {
		return item;
	}
	public void setItem(String item) {
		this.item = item;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getTmark() {
		return tmark;
	}
	public void setTmark(String tmark) {
		this.tmark = tmark;
	}
	
	

}
