package com.web.vo;

public class HumanVO {
	private int age;
	private String name;
	private String addr;
	
	public void setAge(int apge) {
		this.age = apge;
	}
	public int getAge() {
		return age;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	
	public String getName() {
		return name;
	}
	public String getAddr() {
		return addr;
	}
	
	@Override
	public String toString() {
		return "age :" + this.age + "addr :" + this.addr + "name :" + this.name;
	}
}
