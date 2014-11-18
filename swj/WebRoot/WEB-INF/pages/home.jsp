<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
	 <%@include file="head.jsp"%>
  <head>
	<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
	<style type="text/css">
		.container{width:980px;margin:0 auto;padding-top:50px;}
	</style>
	<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=mKNVWpcrYLoWZEZssXGGDAG2"></script>
	<script type="text/javascript">
	$(function(){

		
		// 百度地图API功能
		var map = new BMap.Map("allmap");
		//var point = new BMap.Point(116.331398,39.897445);
		//map.centerAndZoom(point,12);
		map.setCurrentCity("北京"); 
		//创建地址解析器实例
		var myGeo = new BMap.Geocoder();
		// 将地址解析结果显示在地图上,并调整地图视野

		myGeo.getPoint("北京市海淀区上地10街", function(point){
		  if (point) {
			  var jd = point.lng;
			  var vd = point.lat;
		    map.centerAndZoom(point, 12);
		    map.addOverlay(new BMap.Marker(point));
		  }
		}, "北京市");

		$('#machineList').datagrid({
			onDblClickRow:function(rowIndex){
			    //manager_add();
				//alert("dbclick");
			}
		});	
	});
	//datagrid格式化	
	function styler(){
		return "line-height:20px";
	}
	function contactFormatter(value,row,index){
		return "<div title='["+row.space+"]"+row.phone+"'>"+value+"</div>";
	}
	</script>
  </head>
  
  <body>
       
        <!-- 
        <div class="c_subNav" style="border:solid 1px black;line-height:20px;height:35px;background-color:#3A4953;">
			 <ul id="menu" class="basic" style="line-height:20px;">
			  <li class="li charges">
				  <a href="#nogo" class="option"><span>首&nbsp;&nbsp;&nbsp;&nbsp;页</span></a>
			  </li>
			  <li class="li charges">
			  	<a href="#nogo" class="option"><span>设备管理</span></a>
			  	<ul>
				    <li class="li"><a href="#nogo" class="option"><span>新浪体育</span></a></li>
				    <li class="li"><a href="#nogo" class="option"><span>新浪科技</span></a></li>
				    <li class="li"><a href="#nogo" class="option"><span>新浪教育</span></a></li>
			     </ul>
			  </li>
			  <li class="li charges"><a href="#nogo" class="option"><span>用户管理</span></a></li>
			  <li class="li charges"><a href="#nogo" class="option"><span>数据分析</span></a></li>
			  <li class="li charges"><a href="#nogo" class="option"><span>系统设置</span></a></li>
			 </ul>
		</div>
		  -->
      <!-- E 头部 -->
    <div style="width:960px;margin:20px auto;">
    	<table id="machineList" style="width:auto;height:auto;" 
    	title="采集仪当前电位值"
		singleSelect="true" 
		idField="id" 
		striped="true"
		pagination="true"
		fitColumns="true"
		rowStyler="styler"
		showPageList="false"
		pageSize="5"
		pageNumber = 1
	    url="${pageContext.request.contextPath}/json/collected_list.json">
	    <!-- machine/list.htm -->
		<thead>
			<tr>
				<th field="id"  align="center" width="10px">编号</th>
				<th field="name" width="30px" align="center">名称</th>
				<th field="value" width="10px" align="center">电位值</th>
				<th field="time"  width="20px" align="center">采集时间</th>
				<th field="view"  width="10px" align="center">专家意见</th>
				<th field="jd"  width="10px" align="center">经度</th>
				<th field="wd"  width="10px" align="center">纬度</th>
				<th field="contact"  width="10px" align="center" formatter="contactFormatter">联系人</th>
			</tr>
		</thead> 
		</table>
    </div>
    
	<div class="container">
		<div class="easyui-panel" title="地理坐标展示" style="width:auto;height:auto;">
		<div id="allmap" style="border:solid 0px black;width:100%;height:500px;"></div>
		</div>
	</div>
  </body>
</html>
