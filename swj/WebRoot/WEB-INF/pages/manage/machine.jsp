<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
	 <%@include file="../head.jsp"%>
  <head>
	<style type="text/css">
		.container{width:980px;margin:0 auto;padding-top:50px;}
	</style>
	<script type="text/javascript">
	$(function(){
		$('#machineList').datagrid({
			toolbar:'#toolbar',
			onDblClickRow:function(rowIndex){
			    edit();
				//alert("dbclick");
			}
		});
		$("#machineEdit").dialog({
			title:"添加采集仪",
			width:"500px",
			height:"500px",
			closed:"true",
			buttons:[
				{
					text:"保存",
					handler:function(){
						save();
					}
				},{
					text:"取消",
					handler:function(){
						if(window.confirm("确认要取消当前操作么?")){
							$("#machineEdit").dialog("close");
						}
					}
				}

			]
		});
	});
	//datagrid格式化	
	function styler(){
		return "line-height:20px";
	}
	function contactFormatter(value,row,index){
		return "<div title='"+row.phone+"'>"+value+"</div>";
	}
	function operFormatter(value,row,index){
		return "<input type='button' value='下发指令' />";
	}
	function add(){
		$("#machineEdit").dialog("open");
	}
	function edit(){
		$("#machineEdit #id").val("1");
		$("#machineEdit #transferId").val("term01");
		$("#machineEdit #jd").val("东经20°");
		$("#machineEdit #wd").val("北纬100°");
		$("#machineEdit #name").val("宁波采集仪");
		$("#machineEdit #space").val("宁波场站");
		$("#machineEdit #position").val("宁波");
		$("#machineEdit #contact").val("郭敬明");
		$("#machineEdit #phone").val("15012342013");
		$("#machineEdit").dialog("open");
	}
	function kill(){
		if(window.confirm("确认要删除么?")){
			alert("删除成功！");
		}
	}
	function save(){
		
		var param = $("#machineForm").serialize();
		$.post("${pageContext.request.contextPath}/machine/save.htm",param,function(data){
			//alert(data);
			alert("保存成功！");
			$("#machineEdit").dialog("close");
		});
	}
	</script>
  </head>
  
  <body>
    <div style="width:960px;margin:20px auto;">
    	<table id="machineList" 
    	title="采集仪管理"
    	style="width:auto;height:auto;" 
		singleSelect="true" 
		idField="id" 
		striped="true"
		pagination="true"
		fitColumns="true"
		rowStyler="styler"
		showPageList="false"
		pageSize="5"
		pageNumber = 1
	    url="${pageContext.request.contextPath}/json/machine_list.json">
	    <!-- machine/list.htm -->
		<thead>
			<tr>
				<th field="id"  align="center" width="10px">序号</th>
				<th field="transferId" width="15px" align="center">所属中转设备编号</th>
				<th field="name" width="30px" align="center">名称</th>
				<th field="jd"  width="10px" align="center">经度</th>
				<th field="wd"  width="10px" align="center">纬度</th>
				<th field="position"  width="10px" align="center">地理位置</th>
				<th field="space"  width="10px" align="center">所属场站</th>
				<th field="contact"  width="10px" align="center" formatter="contactFormatter">联系人</th>
				<th width="10px" align="center" formatter="operFormatter">操作</th>
			</tr>
		</thead> 
		</table>
    </div>
	 <div id="toolbar" style="padding:5px;height:auto">
		<div style="margin-bottom:5px">
		<a href="javascript:add();" class="easyui-linkbutton" iconCls="icon-add" plain="true">添加</a>
		<a href="javascript:edit();" class="easyui-linkbutton" iconCls="icon-edit" plain="true">修改</a>
		<a href="javascript:kill();" class="easyui-linkbutton" iconCls="icon-remove" plain="true">删除</a>
		</div>
	</div>
	<div style="display:none">
		<div id="machineEdit">
			<form id="machineForm">
			<table>
				<tr><td>名称</td><td><input type="text" name="machine.name" id="name"/></td></tr>
				<tr><td>地理位置</td><td><input type="text" name="machine.position" id="position"/></td></tr>
				<tr><td>经度</td><td><input type="text" name="machine.jd" id="jd" /></td></tr>
				<tr><td>纬度</td><td><input type="text" name="machine.wd" id="wd" /></td></tr>
				<tr><td>所属中转设备</td><td><input type="text" name="machine.transferId" id="transferId"/></td></tr>
				<tr><td>所属场站</td><td><input type="text" name="machine.space" id="space" /></td></tr>
				<tr><td>联系人</td><td><input type="text" name="machine.contact" id="contact" /></td></tr>
				<tr><td>联系电话</td><td><input type="text" name="machine.phone" id="phone" /></td></tr>
			</table>
			</form>
		</div>
	</div>
  </body>
</html>
