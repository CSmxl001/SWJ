<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/menu.css">
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/js/jqezui/themes/gray/easyui.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/js/jqezui/themes/icon.css">
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jqezui/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jqezui/locale/easyui-lang-zh_CN.js"></script>
  </head>
  <div class="swj_header" >
            <a href="home.jsp" >
            	<img src="${pageContext.request.contextPath }/css/image/logoxun.png" alt="巡线工首页" width="159" height="80" border="0">
            </a>
             
            <div class="swj_header_right">
	              <ul>
	              	<li> <span ><strong>中缅石油管道</strong></span><a href="${pageContext.request.contextPath }/logout.htm" >[ 退出 ]</a></li>
	              </ul>
            </div>
            
        </div>
        
        <div class="swj_menu">
			<ul>
			<li style="border-left:solid 1px black;">
				<a href="${pageContext.request.contextPath }/home.htm">首&nbsp;&nbsp;&nbsp;&nbsp;页</a></li>
			<li><a href="${pageContext.request.contextPath }/machine/manage.htm">设备管理</a>
				<ul><li><a>中转设备管理</a></li></ul>
				<ul><li><a>采集仪管理</a></li></ul>
			</li>
			<li><a href="${pageContext.request.contextPath }/user/manage.htm">用户管理</a></li>
			<li><a href="${pageContext.request.contextPath }/chart/home.htm">数据分析</a></li>
			<li><a href="${pageContext.request.contextPath }/system/manage.htm">系统设置</a></li>
			</ul>
		</div>
  
</html>
