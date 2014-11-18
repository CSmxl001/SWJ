package com.swj.domain;

import java.util.Date;
/**
 * 实体：采集信息
 * @author Administrator
 *
 */
public class Collected {
	private int id;		//编号
	private int machineId;//采集仪编号
	private double value; //采集值
	private Date time;		//采集时间
	private View view;		//专家意见
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getMachineId() {
		return machineId;
	}
	public void setMachineId(int machineId) {
		this.machineId = machineId;
	}
	public double getValue() {
		return value;
	}
	public void setValue(double value) {
		this.value = value;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	public View getView() {
		return view;
	}
	public void setView(View view) {
		this.view = view;
	}
	
	
	
}
