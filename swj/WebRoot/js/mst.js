(function(){
	function getCookie(name){
		var cookie=document.cookie;
		var s = removeBlanks(cookie);
		var pairs = s.split(";");
		for (var i=0;i<pairs.length ;i++ ){
			var pairSplit = pairs[i].split("=");
			if(pairSplit.length>1 && pairSplit[0]==name){
				return pairSplit[1];
			}
		}
		return "";
	}
	function removeBlanks(s){
		var temp="";
		for (var i=0;i<s.length;i++ ){
			var c = s.charAt(i)
			if (c!=" "){
				temp+=c;
			}
		}
		return temp;
	}
	function setCookie(name,value){
		var d = new Date();
		d.setTime(d.getTime()+360*24*60*60*1000);
		var newCookie = name+"="+value+";"+"path=/;domain=.xiaomi.com;expires="+d.toGMTString(); 
		window.document.cookie=newCookie;
	}
	function getMstuid(){
		var d = new Date();
		var mstuid = d.getTime()+"_"+Math.round(Math.random()*10000);
		return mstuid;
	}
	
	var uri = document.location.href.replace(/&/g,'|');
	var ref = document.referrer.replace(/&/g,'|');

	var mstuid = getCookie("mstuid");
	var phpsessid = getCookie("PHPSESSID");

    if(mstuid==""){
		mstuid = getMstuid();
		setCookie("mstuid",mstuid);
	}
	var d2 = new Date();
	var param = "ref="+encodeURIComponent(ref)+"&mstuid="+mstuid+"&phpsessid="+phpsessid+"&timestamp="+d2.getTime();

    var o = document.createElement('script'); o.type = 'text/javascript'; o.async = true;
    o.src = "http://a.stat.xiaomi.com/js/mstr.js?"+param;
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(o, s);
})();
