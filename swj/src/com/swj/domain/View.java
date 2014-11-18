package com.swj.domain;
/**
 * 实体：专家意见
 * ge 大于等于
 * gt 大于
 * eq 等于
 * le 小于等于
 * lt 小于
 * @author Administrator
 *
 */
public class View {
	private int id;		//编号
	private String content;//意见内容
	private String range;	//电位值范围，区间表达式，如：ge1.0&lt1.2  
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getRange() {
		return range;
	}
	public void setRange(String range) {
		this.range = range;
	}
	
	
}
