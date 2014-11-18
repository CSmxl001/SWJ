<%@ page language="java" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<link rel="stylesheet" type="text/css" href="./css/menu.css">
	<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
<style type="text/css">
body, html,#allmap {width: 100%;height: 100%;overflow: hidden;margin:0;}
</style>
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=mKNVWpcrYLoWZEZssXGGDAG2"></script>
  </head>
  
  <body>
  <div class="container">


<div id="allmap"></div>


<script type="text/javascript">

// 百度地图API功能
var map = new BMap.Map("allmap");
//var map = new BMap.Map("allmap",{mapType:BMAP_PERSPECTIVE_MAP});//三维
//var map = new BMap.Map("allmap",{mapType: BMAP_HYBRID_MAP});//卫星

var point = new BMap.Point(116.331398,39.897445);
map.centerAndZoom(point,17);//1-18比例

map.addControl(new BMap.NavigationControl());               // 添加平移缩放控件
map.addControl(new BMap.ScaleControl());                    // 添加比例尺控件
map.addControl(new BMap.OverviewMapControl());              //添加缩略地图控件
map.addControl(new BMap.MapTypeControl());          //添加地图类型控件
map.setCurrentCity("北京");          // 设置地图显示的城市 此项是必须设置的

map.enableScrollWheelZoom();//启用滚轮放大缩小
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

var sContent =
	"<h4 style='margin:0 0 5px 0;padding:0.2em 0'>天安门</h4>" + 
	"<img style='float:right;margin:4px' id='imgDemo' src='http://app.baidu.com/map/images/tiananmen.jpg' width='139' height='104' title='天安门'/>" + 
	"<p style='margin:0;line-height:1.5;font-size:13px;text-indent:2em'>天安门坐落在中国北京市中心,故宫的南侧,与天安门广场隔长安街相望,是清朝皇城的大门...</p>" + 
	"</div>";
var infoWindow = new BMap.InfoWindow(sContent);  // 创建信息窗口对象
//编写自定义函数,创建标注
function addMarker(point){
  var marker = new BMap.Marker(point);
  marker.addEventListener("click", function(){          
	   this.openInfoWindow(infoWindow);
	   //图片加载完毕重绘infowindow
	   document.getElementById('imgDemo').onload = function (){
	       infoWindow.redraw();   //防止在网速较慢，图片未加载时，生成的信息框高度比图片的总高度小，导致图片部分被隐藏
	       infoWindow.getContent();//获取信息窗口的内容
	   }
	});
  map.addOverlay(marker);
}

var point = new BMap.Point(116.417854,39.921988);
addMarker(point);


var contextMenu = new BMap.ContextMenu();
var txtMenuItem = [
  {
   text:'放大',
   callback:function(){map.zoomIn()}
  },
  {
   text:'缩小',
   callback:function(){map.zoomOut()}
  },
  {
   text:'放置到最大级',
   callback:function(){map.setZoom(18)}
  },
  {
   text:'查看全国',
   callback:function(){map.setZoom(4)}
  },
  {
   text:'在此添加标注',
   callback:function(p){
    var marker = new BMap.Marker(p), px = map.pointToPixel(p);
    map.addOverlay(marker);
   }
  }
 ];


 for(var i=0; i < txtMenuItem.length; i++){
  contextMenu.addItem(new BMap.MenuItem(txtMenuItem[i].text,txtMenuItem[i].callback,100));
  if(i==1 || i==3) {
   contextMenu.addSeparator();
  }
 }
 map.addContextMenu(contextMenu);
//单击获取经度纬度
 map.addEventListener("click",function(e){
	    alert(e.point.lng + "," + e.point.lat);
	});

//覆盖区域图层测试
 map.addTileLayer(new BMap.PanoramaCoverageLayer());

 var stCtrl = new BMap.PanoramaControl(); //构造全景控件
 stCtrl.setOffset(new BMap.Size(20, 20));
 map.addControl(stCtrl);//添加全景控件
</script>
	</div>
  </body>
</html>