package com.swj.domain;
/**
 * 实体：系统用户
 * @author Administrator
 *
 */
public class User {
	private int id;			//编号
	private String username;	//登录用户名
	private String password;	//登录密码
	private String realname;	//真实姓名
	private String role;		//权限级别
	private String phone;		//联系电话
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRealname() {
		return realname;
	}
	public void setRealname(String realname) {
		this.realname = realname;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	
	
	
}
