package com.swj.base;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts2.ServletActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class BaseAction extends ActionSupport{
	
	private static final long serialVersionUID = 1L;
	public static final String USERINFO = "USERINFOSESSIONKEY";
	public static final String APPLINFO = "APPLINFOCONTEXTKEY";

	
	//上传文件的名称，以参数方式传进来
	private File upload;	
	private String uploadFileName;	
	private String uploadContentType;
	protected HttpServletRequest request = ServletActionContext.getRequest();
	protected HttpServletResponse response = ServletActionContext.getResponse();
	//查询参数,由于多个参数的情况
	protected Map<String,String> keys = new HashMap<String,String>();
	//查询参数,由于一个参数的情况
	protected String key;
	
	{
		try {
			if(request!=null&&response!=null){//考虑到非Web环境的调试。
				request.setCharacterEncoding("utf-8");
				response.setCharacterEncoding("utf-8");
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * 些json字符串，注意返回字串中不能直接含有单引号
	 * @Methods Name writeJsonString
	 * @Create In 2011-12-22 By yangwb
	 * @param json 
	 * @ReturnType void
	 */
	protected void writeJsonString(String json) {
		response.setContentType("text/html");
		//是否支持跨域的jsonp方式
		String callback = request.getParameter("callback");
		try {
			PrintWriter writer = ServletActionContext.getResponse().getWriter();
			if(callback==null) {
				writer.write(json);
			}
			else {
				//注意返回字串中不能直接含有单引号
				writer.write(callback+"(\'"+json+"\')");
			}
			writer.flush();
			writer.close();
		}
		catch (IOException e) {
			e.printStackTrace(); 
		}
	}
	
	/**
	 * 标准Json送输出 for kill / save(update).
	 * @Methods Name writeJson
	 * @Create In 2011-11-25 By yangwb
	 * @param ok
	 * @param o 
	 * @ReturnType void
	 */
	protected void writeJson(boolean ok) {
		response.setContentType("text/html");
		//是否支持跨域的jsonp方式
		String callback = request.getParameter("callback");
		try {
			PrintWriter writer = ServletActionContext.getResponse().getWriter();
			if(ok) {//成功时打印	
				if(callback==null) {
					writer.write("ok");	
				}
				else {
					writer.write(callback+"('ok');");	
				}
			}
			else {
				if(callback==null) {
					writer.write("sorry");
				}
				else {
					writer.write(callback+"('sorry')");
				}
			}
			writer.flush();
			writer.close();
		} 
		catch (IOException e) {
			e.printStackTrace(); 
		}
	}
	/**
	 * 标准Json送输出 for find.
	 * @Methods Name writeJson
	 * @Create In 2011-11-25 By yangwb
	 * @param o 
	 * @ReturnType void
	 */
	protected void writeJson(Object o) {
		response.setContentType("text/html");
		//是否支持跨域的jsonp方式
		String callback = request.getParameter("callback");
		try {
			PrintWriter writer = ServletActionContext.getResponse().getWriter();
			if(o!=null) {//成功时打印
				if(callback==null) {
					RainJackson.defaultMapper().writeValue(writer, o);
				}
				else {
					String json = RainJackson.defaultMapper().writeValueAsString(o);
					writer.write(callback+"("+json+")");
				}
			}
			else {
				if(callback==null) {
					writer.write("sorry");
				}
				else {
					writer.write(callback+"('sorry')");
				}
			}
			writer.flush();
			writer.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
	
	/**
	 * 标准Json送输出 for load / save(insert)
	 * @Methods Name writeJson
	 * @Create In 2011-11-25 By yangwb
	 * @param ok
	 * @param o 
	 * @ReturnType void
	 */
	protected void writeJson(boolean ok, Object o) {
		response.setContentType("text/html");
		//是否支持跨域的jsonp方式
		String callback = request.getParameter("callback");
		try {
			PrintWriter writer = ServletActionContext.getResponse().getWriter();
			if(ok) {
				if(o!=null) {//成功时打印
					//有数据输出
					if(callback==null) {
						RainJackson.defaultMapper().writeValue(writer, o);	
					}
					else {
						String json = RainJackson.defaultMapper().writeValueAsString(o);
						writer.write(callback+"("+json+")");
					}
				}
				else {
					if(callback==null) {
						writer.write("sorry");
					}
					else {
						writer.write(callback+"('sorry')");
					}
				}
			}
			else {
				if(callback==null) {
					writer.write("sorry");
				}
				else {
					writer.write(callback+"('sorry')");
				}
			}
			writer.flush();
			writer.close();
		} catch (IOException e) {
			e.printStackTrace();
		}	
	}
	
	
	
	/**
	 * 上下文路径，方便页面获得
	 * @Methods Name getContextPath
	 * @Create In 2012-1-30 By yangwb
	 * @return 
	 * @ReturnType String
	 */
	public String getContextPath() {
		return ServletActionContext.getRequest().getContextPath();
	}
		

///////////////////////////////////////////////////////////////////////////
		

	public File getUpload() {
		return upload;
	}

	public void setUpload(File upload) {
		this.upload = upload;
	}

	public String getUploadFileName() {
		return uploadFileName;
	}

	public void setUploadFileName(String uploadFileName) {
		this.uploadFileName = uploadFileName;
	}

	public String getUploadContentType() {
		return uploadContentType;     
	}

	public void setUploadContentType(String uploadContentType) {
		this.uploadContentType = uploadContentType;
	}

	public Map<String, String> getKeys() {
		return keys;
	}

	public void setKeys(Map<String, String> keys) {
		this.keys = keys;
	}
	
	public String getKey() {
		return key;
	}
	
	public void setKey(String key) {
		this.key = key;
	}
}
