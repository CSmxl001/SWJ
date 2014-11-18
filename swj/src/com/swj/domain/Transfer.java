package com.swj.domain;
/**
 * 实体：中转设备
 * @author Administrator
 *
 */
public class Transfer {
	private int id;		//编号
	private String ip;		//设备的ip地址
	private int port;		//与服务器通信的端口号
	private String contact;//联系人
	private String phone;	//联系电话
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getIp() {
		return ip;
	}
	public void setIp(String ip) {
		this.ip = ip;
	}
	public int getPort() {
		return port;
	}
	public void setPort(int port) {
		this.port = port;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	
	
}
