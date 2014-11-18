package com.swj.action;

import java.util.List;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;


import com.swj.base.BaseAction;
import com.swj.base.RainJackson;
import com.swj.domain.Machine;
import com.swj.persist.MachineDao;


@Namespace("/machine")
@Results( { @Result(name = BaseAction.SUCCESS, location = "/success.jsp"),
		@Result(name = BaseAction.INPUT, location = "/WEB-INF/pages/manage/machine.jsp"),
		@Result(name = BaseAction.NONE, location = "/admin/users/teacher_main.jsp"), 
		@Result(name = "basic", location = "/admin/users/teacher/0.jsp") 
})
public class MachineAction extends BaseAction{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Machine machine = new Machine();
	private MachineDao dao = new MachineDao();
	@Action(value="manage")
	public String manage(){
		
		return INPUT;
	}
	@Action(value="load")
	public String load(){
		dao.delete(machine);
		writeJsonString("");
		return null;
	}

	@Action(value="save")
	public String save(){
		dao.insert(machine);
		writeJson(true);
		return null;
	}
	
	@Action(value="update")
	public String update(){
		dao.save(machine);
		writeJson(true);
		return null;
	}
	
	@Action(value="list")
	public String list(){
		List<Machine> machinelist = dao.select();
		String list = RainJackson.writeValueAsString(machinelist);
		writeJsonString("{\"total\":\""+machinelist.size()+"\",\"rows\":"+list+"}");
		return null;
	}
	
	public Machine getMachine() {
		return machine;
	}

	public void setMachine(Machine machine) {
		this.machine = machine;
	}
	
	
}
