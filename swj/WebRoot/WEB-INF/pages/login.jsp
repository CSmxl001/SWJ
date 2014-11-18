<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta charset="UTF-8">
  <title>登录</title>
  <style>
body,h1,h2,h3,h4,h5,h6,blockquote,p,pre,dl,dd,ol,ul,caption,th,td,form,fieldset,legend,input,button,textarea,address{margin:0;padding:0}
h1,h2,h3,h4,h5,h6{font-size:100%}
ol,ul{list-style:none}
fieldset,img{border:0}
address,cite,dfn,em,var{font-style:normal}
code,kbd,pre,samp{font-family:courier new,courier,monospace}
input,button,textarea,select{font-size:100%;}
table{border-collapse:collapse;border-spacing:0;empty-cells:show;font-size:inherit}
abbr[title]{border-bottom:1px dotted;cursor:help}
a,a:hover{text-decoration:none}
a,
label,
:focus{outline:0 none;}
body{font:12px arial,\5FAE\8F6F\96C5\9ED1,\9ED1\4F53,\6587\6CC9\9A7F\9ED1\4F53,\5B8B\4F53,sans-serif; color:#000;}
input:-moz-placeholder {color: #ccc; }
::-webkit-input-placeholder {color:#ccc;}
.clearfix:after{display: block; content: "\20"; height: 0; clear: both; overflow: hidden; visibility: hidden;}/*ie8以上*/
.clearfix{*zoom:1;}/*ie6、7*/ 

.input_kuang,
.sub_login,
.mt_login,
.popmessage{background-image:url(data:image/gif;base64,R0lGODlhCAAiAYcAAPLy8uvr6/f39/b29v///3bAIXfBIf+QTP/1wf6KRf7zvvrlpv1/OGWxH/t1Lvzssv3vt/3wuPrmp/rnqfvorP+PSp3TXf3utf7zvf2BO/7yvP3xumSwHvx6M/x5MvzutPvoq/6LRmq2H/x8Nf+NSft2Lv2FQGOwHv6HQvzttGe0H/vprXO+If7xu//0wGazH/2DPmWyH/x3L/3vtv6GQf7yu/zss2u3IGKvHl2qHV+sHmGuHmCuHmm1H/t1LfnkpP6NSPzrsP3wuXK8If+PS/+OSv2CPf/52/x3MP1+N2CtHv+oc/70v2+6IPtzK/vvyf6JRPvnqt/f3/6IQ3S+IftzLG65IHW/IWi0H/vqr/vqrm24IF6sHvx6NPrkpXC7IHG8IGy4IPx9NnjCIV2rHf2AOV6rHvrmqPx4Mfzrsfx7NHO9If2EP//1wP2CPPt0LP6MR+7u7vHx8f7+/vj4+PDw8P39/e/v7/z8/Pn5+fr6+vv7++zs7O3t7fPz8/X19fT09AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACH/C05FVFNDQVBFMi4wAwEBAAAh+QQAAAAAACwAAAAACAAiAQAI/wCXCBwo8IDBgwgTHiDCsCHDChAjQixCsSJFEhgzYgTCsSNHOCBDggxBsiTJBChTqlyZAIrLly6nyJwpE4XNmzZp6Nyp04TPnz7ZCB0qFIbRo0aNKF2q1I3Tp04zSJ0qtYzVq1YZaN2qNYnXr17FiB0rdoTZs2bVqF2rtovbt247yJ0r14Pdu3bR6N2rF4nfv35lCB4suIThw4YdKF6s2Ifjx47fSJ4suYrly5adaN6seY7nz57/iB5NurTp0YBSq17NurXr16v9yJ5Nu7bt27QB6N7Nu7fv3XKCCx9OvLjx4XWSK1/OvLnyO9CjS59Ovbr0ONiza9/OPXuf7+DDi/8fTz48n/Po06tfz759+gDw48ufH6C8hfv474/Zz3+/gf8ABiigAQUUaOCBCBZwxYIMLkjFgxA+yMKEFE64xoUYXjjEhhxuCMaHIH74xYgkjtjEiSieaMWKLK64xYswvhjGjDTOeMONON4owo487tjDj0D+iMWQRA6pwpFIHvnCkkwuGcOTUD7ZwJRUTsnBlVheecKWXG6Jw5dgfrnDmGSOycOZaJ6pxJpsrqnDm3C+ycWcdM5pxp143knGnnzumcOfgP4pxaCEDupcHXQkquiijNKRx6OQRirppJRWGqkemGaq6aacduqppnuEKuqopJZq6qmj4qHqqqy26uqrrNr/IeustNZq66240grarrz26uuvcxAg7LDEFmvssL6epuyyysLm7LPO4ibttNTK9tu12F573LbcEnfot+AyZ9245JYLXXfopotueey26+537sUrb7z01WvvvfD5muu+tcLq778Aq4rqwAQP/OnBCGNq6cIMP9rowxBHLLEAFFds8cUYZ2zxABx37PHHIIfsMbMkl3watCinDEi1tEF8xMswv4zAzDTXbDMCbeSsc84u9Oxzz0wELXTQChRt9NFIK4DB0kwvrcHTUD9dw9RUT93C1VhfvcHWXG8txNdgfx3B2GSPDcHZaJ89w9psr33B23C//cHcdM+dwt14323D3nzvVf3A34D/ncbghA8exOGIH57F4owvrsXjkD++wuSUT07B5ZhfDsLmnG8exeegfz7B6KSPfsbpqJ8uweqsr77A67DHLvsCXtRue+0/5K577k/07nvvAQEAOw==); background-repeat:repeat-x;}

body{background:#f2f2f2;}
.top{padding-top:25px; height:75px; background:#ececec; border-bottom:1px solid #d9d9d9;}
.logo, .content, .footer{width:900px; margin:0 auto; padding:0 30px;}
.content{
	padding-top:80px;
	height:500px;
	position:relative;
	
	background-color: #F4F4F4;
}
.login_form{width:377px; float:right; background:#fff url(data:image/gif;base64,R0lGODlhCADVAYMAAPf39/v7+/r6+vz8/Pn5+fj4+P39/f7+/v///wAAAAAAAAAAAAAAAAAAAAAAAAAAACH/C05FVFNDQVBFMi4wAwEBAAAh+QQAAAAAACwAAAAACADVAQAI/wARCBxIsKDBgwgTKlzIsKHDhxAjSpxIsaLFixgzatzIsaPHjyBDihxJsqTJkyhTqkRwoKXLlzBjypxJs6bNmzhz6tzJs6fPn0CDCh1KtKjRo0iTyjTAtKnTp1CjSp1KtarVq1izat3KtavXr2DDih1LtizWAWjTql3Ltq3bt3Djyp1Lt67du3jz6t3Lt6/fv3kDCB5MuLDhw4gTK17MuLHjx5AjS55MubLly5gzLxbAubPnz6BDix5NurTp06hTq17NurXr17Bjy55dmoDt27hz697Nu7fv38CDCx9OvLjx48iTK1/OvLlzAgWiS59Ovbr169iza9/Ovbv37+DDiyUfT768+fPo06uvDqC9+/fw48ufT7++/fv48+vfz7+///8AAhAQADs=) left top repeat-x; *background:#fff url(/images/s_bg.gif) left top repeat-x;}
.pad_50{padding:0 0 22px 50px; border:1px solid #dcdcdc; border-bottom:1px dashed #d5d5d5;}
.login_form h4{font:normal 22px/1.1 \5FAE\8F6F\96C5\9ED1,\9ED1\4F53,\6587\6CC9\9A7F\9ED1\4F53; color:#ff7e00; height:52px; padding-top:50px;}
.input-field{position:relative; margin-bottom:14px;}
.input_kuang{display:block; float:left; vertical-align:top; height:20px; line-height:20px; padding:8px; font-size:14px; border:1px solid #e3e3e3; border-top:1px solid #ccc; width:252px;
background-color:#fff; background-position:0 -118px; *background:#fff url(/images/s_bgs2.gif) 0 -118px repeat-x; box-shadow:0 1px 1px #fff;}/*-- 文本输入框 --*/
.sub_bg, .input_kuang, .input_b, .sub_login, .mt_login{-moz-border-radius:3px; -webkit-border-radius:3px; border-radius:3px; }
.sub_bg , .mt_login, .input_b{-moz-box-shadow:0 1px 1px #f0f0f0; -webkit-box-shadow:0 1px 1px #f0f0f0; box-shadow:0 1px 1px #f0f0f0;}
.sub_login{margin:0 auto; width:130px; border:1px solid #dd621f; height:40px; background-position:0 0 ; *background:url(/images/s_bgs2.gif) 0 0 repeat-x; cursor:pointer;}/*-- 小黄按钮 --*/
.no_bg{border:0 none;padding:0;background-color:transparent;cursor:pointer; display:block;}
.sub_bg input{width:132px; height:36px;}
.sub_login input{width:130px;height:40px;color:#fff;font:700 16px/40px \5FAE\8F6F\96C5\9ED1,\9ED1\4F53,\6587\6CC9\9A7F\9ED1\4F53;}
.sub_login .sub_login_a{ display:inline-block; _display:inline; *zoom:1; width:130px;height:40px;text-align:center;color:#fff;font:700 16px/40px \5FAE\8F6F\96C5\9ED1,\9ED1\4F53,\6587\6CC9\9A7F\9ED1\4F53;}
.cooke{margin:20px 0 20px 0; height:14px; position:relative; color:#666;}
.cooke input{top:0; left:0; *left:-4px; *top:-4px; position:absolute;}
.cooke span{position:absolute; line-height:14px; display:block; top:0; left:22px;}

.sub_log a{float:left; margin:10px 0 0 20px; font-size:14px; color:#333; height:14px; display:inline-block; line-height:1.5;}


.mt_login{display:inline-block; *display:inline; zoom:1; height:24px; border:1px solid #dadada; font-size:14px; cursor:pointer; padding-top:14px; width:273px;
text-align:center; color:#DD621F; font-weight:bold; background-position:0 -40px; *background:url(/images/s_bgs2.gif) 0 -40px repeat-x; }

.ano_log{padding:30px 50px 10px 50px; background:#f8f8f8; border:1px solid #dcdcdc; border-bottom:none; border-top:none;}
.ano_log .mt_login{height:30px; padding-top:12px;}
.ano_span_t{color:#999; line-height:1.1; text-align:center; font-size:12px; height:46px; background:url(${pageContext.request.contextPath}/images/bom_corner.png) left bottom no-repeat;}

.error_icontwo{width:16px; height:16px; vertical-align:middle; display:inline-block; background:url(data:image/gif;base64,R0lGODlhEAAbAIYAAPniovniof8DAv5hSP5kS/5mTf5INv5vU/8OCvjgnvjhn/5LOP4sIf4vI+nJRunKSf8LCOnJR/2Nav2VcPzdpv8nHfzapPDTbP2Tbv2mfOnKSP2FY/TbiPHVc/zSne7Zgv22ifDUb/8RDPXdi/8IBurMT/LXff2uguvOWenIROnIRe7RZPDUbu/YgP5xVfHhofj38/n49PzVn/8WEff05vj16f50V/ffmPbw1P2CYezUbfHWd/Ppvv8GBP2HZfTpvvLipOvOWvbv1PzgqP28je3Ta+7SZ+rLTP5bRPPZgP5pT/41J/5WQP8eF/5CMv16W/zjqvnjovnhoP2KaPn5+fzrsPr6+v8AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACH/C05FVFNDQVBFMi4wAwEBAAAh+QQAAAAAACwAAAAAEAAbAAAI/wBZRBlIkOAII1YSWnkAoKHDhklK8FC4MIDFiwF2BBFChaIGKSBDhtBBg0pHhRFCSrlx4QMMkycTRlBAk8OKFzBNUnSQIIGJIz9y6lTIswMKHBSTJlRxoUgNpUpTtIgBVSmQqlCraK1yYgGEK1dIGMiwdesQA2DTpnViYSsUBlcEqAUrtwIFrUziTpiidsoEuQaqEAGLQSvfK1O0YgALYgDYAlunJNZaAOyACmkhl61SGWwTBGoJlCWgVsCMvmUPg0WwJO3k1GkZ2AD7moBow2APyPjqQqvjK7cPXOnhocqG3L8tC7/yZKuSuXORbJYgAjqCHJu1UpCwoEEDAz7abgINCAA7) 0 -11px no-repeat; *background:url(/images/icos2.gif) 0 -11px no-repeat; margin-right:6px;}
.littlepop{display:none; position:absolute; top:-35px; right:48px;}
.popmessage{border:1px solid #e8d76b; padding:10px; display:none; height:18px; color:#ff0000; line-height:1.1; box-shadow:0 1px 3px #e9e9e9;
  border-radius:3px; background-position:0 -252px; *background:url(/images/s_bgs2.gif) 0 -252px repeat-x;}
.little_corner{display:block; width:12px; height:11px; background:url(data:image/gif;base64,R0lGODlhEAAbAIYAAPniovniof8DAv5hSP5kS/5mTf5INv5vU/8OCvjgnvjhn/5LOP4sIf4vI+nJRunKSf8LCOnJR/2Nav2VcPzdpv8nHfzapPDTbP2Tbv2mfOnKSP2FY/TbiPHVc/zSne7Zgv22ifDUb/8RDPXdi/8IBurMT/LXff2uguvOWenIROnIRe7RZPDUbu/YgP5xVfHhofj38/n49PzVn/8WEff05vj16f50V/ffmPbw1P2CYezUbfHWd/Ppvv8GBP2HZfTpvvLipOvOWvbv1PzgqP28je3Ta+7SZ+rLTP5bRPPZgP5pT/41J/5WQP8eF/5CMv16W/zjqvnjovnhoP2KaPn5+fzrsPr6+v8AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACH/C05FVFNDQVBFMi4wAwEBAAAh+QQAAAAAACwAAAAAEAAbAAAI/wBZRBlIkOAII1YSWnkAoKHDhklK8FC4MIDFiwF2BBFChaIGKSBDhtBBg0pHhRFCSrlx4QMMkycTRlBAk8OKFzBNUnSQIIGJIz9y6lTIswMKHBSTJlRxoUgNpUpTtIgBVSmQqlCraK1yYgGEK1dIGMiwdesQA2DTpnViYSsUBlcEqAUrtwIFrUziTpiidsoEuQaqEAGLQSvfK1O0YgALYgDYAlunJNZaAOyACmkhl61SGWwTBGoJlCWgVsCMvmUPg0WwJO3k1GkZ2AD7moBow2APyPjqQqvjK7cPXOnhocqG3L8tC7/yZKuSuXORbJYgAjqCHJu1UpCwoEEDAz7abgINCAA7) 0 0 no-repeat; *background:url(/images/icos2.gif) 0 0 no-repeat; margin-left:13px; margin-top:-2px; overflow:hidden; position:relative; z-index:1;}

.imgerror .errortip, .nosame .errortip, .error .errortip, .empty .errortip, .repeat .errortip{border:2px solid #f18447; padding:7px;}
.nosame .no_tips, .error .littlepop, .empty .littlepop, .error .error_tip, .empty .empty_tip, .repeat .repeat_tip, .succ .succ_tips{display:inline-block; _display:inline; *zoom:1; }

.links{display:inline-block;*display:inline;zoom:1;}
.links li{border-right:1px solid #ff6600; float:left;}
.links li.copyright{border-right:none;}
.footer{text-align:center; margin-top:95px; }
.footer a{color:#ff6600; padding:0 10px; }
.footer span{margin-left:10px; color:#999;}

.language{position:absolute; top:-80px; right:20px;}
.language a{padding:0 10px; color:#666; font-size:14px; border-right:1px solid #666;}
.language a.last{border:0 none;}
.language a:hover{color:#333; text-decoration:underline;}

.flt_l{float:left;}
  </style>
</head>
<body>
<div class="top">
	<div class="logo">	  <img src="${pageContext.request.contextPath }/images/logoxun.png" alt="logo" width="159" height="80">	</div>
</div>

<div id="loaddiv" class="content clearfix loadimg">
  <div class="language">
    
  </div>
  <img src="${pageContext.request.contextPath }/images/welcome3.gif" width="510" height="410">
  <div class="login_form clearfix">
    <div class="pad_50 clearfix">
      <h4>欢迎登录阴极保护智能采集系统</h4>
      <form method="post" action="${pageContext.request.contextPath }/login.htm" id="loginForm" onSubmit="return validate_form()">
	<input type="hidden" name="passToken" id="passToken" value="">
        <div class="input-field clearfix" id="loginId">
          <input type="text" id="user_ph" class="input_kuang item errortip" value="巡线工ID" style="color:#999;display:none;">
          <input type="text" name="user" value="" id="user" class="input_kuang item errortip" placeholder="巡线工ID" isrequired="true" rule="(^[\w.\-]+@(?:[a-z0-9]+(?:-[a-z0-9]+)*\.)+[a-z]{2,3}$)|(^1[3|4|5|8]\d{9}$)|(^\d{3,}$)|(^\++\d{2,})" autocomplete="off">
          <span class="littlepop"><!-- 错误提示小气泡 -->
            <span class="popmessage error_tip">
              <span class="error_icontwo"></span><span id="errorTip">帐户名错误</span>
            </span>
            <span class="popmessage empty_tip">
              <span class="error_icontwo"></span><span>请输入帐户名</span>
            </span>
            <i class="little_corner"></i>
          </span>
        </div>
        <div class="input-field clearfix" id="loginPass">
          <input type="text" id="pwd_ph" value="密码" class="input_kuang item errortip" style="color:#999;display:none;">
          <input type="password" name="pwd" class="input_kuang item errortip" id="pwd" placeholder="密码" isrequired="true" autocomplete="off"><!-- error_put为出现错误时的黄框 -->
          <span class="littlepop">
            <span class="popmessage empty_tip">
              <span class="error_icontwo"></span><span>请输入密码</span>
            </span> 
            <i class="little_corner"></i>
          </span>
          <input type="hidden" name="callback" value="http://order.xiaomi.com/login/callback?followup=http%3A%2F%2Fwww.xiaomi.com%2Findex.php&amp;sign=ZjEwMWVlOTY3MWM1OGE3YjYxNGRiZjQ5MzJmYjI5NDE0ZWY0NzY5Mw,,">
          <input type="hidden" name="sid" value="eshop">
          <input type="hidden" id="qs" name="qs" value="%3Fcallback%3Dhttp%253A%252F%252Forder.xiaomi.com%252Flogin%252Fcallback%253Ffollowup%253Dhttp%25253A%25252F%25252Fwww.xiaomi.com%25252Findex.php%2526sign%253DZjEwMWVlOTY3MWM1OGE3YjYxNGRiZjQ5MzJmYjI5NDE0ZWY0NzY5Mw%252C%252C%26sid%3Deshop">
          <input type="hidden" name="hidden" value="">
          <input type="hidden" name="_sign" value="nO3+W5nvdP4mTZ8aQqoAilyXq8g=">
        </div>
        
        <div class="cooke">
          <label for="auto"><input type="checkbox" id="auto" name="auto" value="true" class="Mradio val_mT"><span class="val_m">两周内自动登录</span></label>
        </div>
        <div class="sub_log clearfix">
          <div class="sub_login flt_l"><input type="submit" class="no_bg" value="登录"></div>
          <a href="${pageContext.request.contextPath }/forgotPassword.htm">忘记密码?</a>
        </div>
      </form>
	  
    <div class="ano_log"></div>
    <div class="ano_span_t"></div>
  </div>
</div>
<script>
function ele(id){ return document.getElementById(id);}
function bind(obj, type, fn){
  if(obj.attachEvent){
    obj['e'+type+fn] = fn;
    obj[type+fn] = function(){obj['e'+type+fn](window.event);}
    obj.attachEvent('on'+type, obj[type+fn]);
  }else obj.addEventListener( type, fn, false );
}
function init_ie_ph(id) {
  ele(id).style.cssText="display:none";
  ele(id+"_ph").style.cssText="color:#999";
  bind(ele(id+"_ph"), "focus", function(){
    ele(id+"_ph").style.cssText="display:none";
    ele(id).style.cssText="";
    ele(id).focus();
  });
  bind(ele(id), "blur", function(){
    if(!ele(id).value){
      ele(id).style.cssText="display:none";
      ele(id+"_ph").style.cssText="color:#999";
    }
  });
}
function init_validate(field, container){
  bind(ele(field), "blur", function(){
    if(!ele(field).value) ele(container).className = "input-field clearfix empty";
    else if(ele(field).getAttribute("rule")){
      var reg = new RegExp(ele(field).getAttribute("rule"));
      var val = ele("user").value.replace(/(^[\s]*)|([\s]*$)/g, "");
      val = val.toLowerCase();
      if(!reg.test(val)) ele(container).className = "input-field clearfix error";
    }
  });
  bind(ele(field), "focus", function(){ele(container).className = "input-field clearfix";});
  bind(ele(field), "change", function(){ele("loginId").className = "input-field clearfix";ele("loginPass").className = "input-field clearfix";});
}
function validate_form(){
  if(!ele("user").value||!ele("pwd").value) return false;
  s = ele("loginId").className + " " + ele("loginPass").className;
  if(s.indexOf("empty") != -1 || s.indexOf("error") != -1) return false;
  var userName = ele("user").value.replace(/(^[\s]*)|([\s]*$)/g, "");
  userName = userName.toLowerCase();
  var date = new Date();
  date.setTime( date.getTime() + 1*24*3600*1000 );
  document.cookie = "userName=" + escape(userName) + "; expires=" + date.toGMTString();
  ele("user").value = userName.replace(/^\+86/, "");
  return true;
}
function change_lang(lang){
  var url = window.location.href
  var reg = new RegExp("(^|&)_locale=([^&]*)(&|$)");
  var r = window.location.search.substr(1).match(reg);
  if (r!=null){
    var locale = unescape(r[2]);
    url = url.replace("_locale="+locale, "_locale="+lang);
  }else{
	if(url.indexOf("?") > 0) url += "&_locale="+lang;
	else url += "?_locale="+lang;
  }
  self.location=url.replace("serviceLoginAuth2","serviceLogin");
}
window.onload=function(){
  var loaddiv=ele("loaddiv"); 
  loaddiv.className+=" loadimg";
  if(navigator.userAgent.indexOf("MSIE") > 0){
    init_ie_ph("user");
    init_ie_ph("pwd");
  }
  init_validate("user", "loginId");
  init_validate("pwd", "loginPass");

  var pt = ele("passToken");
  var c = document.cookie.split(";");
  var p = "", userName = '';
  for(var i = 0 ; i < c.length ; i++){
    if(c[i].indexOf("passToken") > -1){
      p = c[i].substring(c[i].indexOf("=")+1) ;
      break ;
    }
    if(c[i].indexOf("userName") > -1){
      userName = c[i].substring(c[i].indexOf("=")+1) ;
      ele("user").value = unescape(userName);
      break;
    }
  }
  pt.value = p;
  
  if(ele("icode_img")) {
	  bind(ele("icode_img"), "click", function(){
    	  ele("icode_img").src = ele("icode_img").src + "&" + Math.random();
      });
  }

  var msg = "";
  if(msg.length > 0 ){
    if(msg == "CAPTCHA_VERIFY_ERROR") {
      ele("icode_div").className = "input-field clearfix error";
      init_validate("captCode", "icode_div");
    } else{
      ele("loginId").className = "input-field clearfix error"; 
      bind(ele("user"), "focus", function(){
         ele("errorTip").firstChild.nodeValue='帐户名错误';
      });
      ele("errorTip").firstChild.nodeValue='帐户名或密码错误';
    }
  }
  if(navigator.userAgent.indexOf("MSIE") > 0 && ele("user").value){
    ele("user_ph").style.cssText="display:none";
    ele("user").style.cssText="";
  }
}
</script>


</body></html>