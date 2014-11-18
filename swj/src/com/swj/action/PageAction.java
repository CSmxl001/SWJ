package com.swj.action;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;

import com.swj.base.BaseAction;
@Namespace("/")
@Results({
	@Result(name="login",location="/WEB-INF/pages/login.jsp"),
	@Result(name="main",location="/WEB-INF/pages/home.jsp")
})
public class PageAction extends BaseAction{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Action(value="index")
	public String index(){
		return "login";
	}
	
	@Action(value="login")
	public String login(){
		return "main";
	}
	
	@Action(value="home")
	public String home(){
		return "main";
	}
	
	@Action(value="logout")
	public String logout(){
		return "login";
	}
	@Action(value="forgotPassword")
	public String forgotPassword(){
		return null;
	}

}
