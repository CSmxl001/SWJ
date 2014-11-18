package com.swj.domain;

import java.util.Date;

/**
 * 实体：发送指令
 * @author Administrator
 *
 */
public class Order {
	 private int id;			//编号
	 private int userId;		//发送指令的人
	 private int machineId;	//发送到哪台采集仪
	 private Date sendTime;		//发送时间
	 private String content;	//发送内容
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public int getMachineId() {
		return machineId;
	}
	public void setMachineId(int machineId) {
		this.machineId = machineId;
	}
	public Date getSendTime() {
		return sendTime;
	}
	public void setSendTime(Date sendTime) {
		this.sendTime = sendTime;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	 
	 
}
