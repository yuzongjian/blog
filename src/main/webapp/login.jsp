<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8"/>
<title>项目申报工作系统</title>
<meta name="author" content="DeathGhost" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/style.css" tppabs="static/css/style.css" />
<style>
body{height:100%;background:#16a085;overflow:hidden;}
canvas{z-index:-1;position:absolute;}
</style>
<script src="${pageContext.request.contextPath}/static/js/jquery.js"></script>
<script src="${pageContext.request.contextPath}/static/js/verificationNumbers.js" tppabs="static/js/verificationNumbers.js"></script>
<script src="${pageContext.request.contextPath}/static/js/Particleground.js" tppabs="static/js/Particleground.js"></script>
<script src="${pageContext.request.contextPath}/static/layui/layui.js" ></script>
<script src="${pageContext.request.contextPath}/static/layui/css/layui.css" ></script>
<script type="text/javascript">
function error(){
 	var error=document.getElementById("error").value;
	if(""!=error||null!=error){
		layer.alert("您输入的账号或密码有误！", {
			 icon: 5,
			    skin: 'layui-layer-molv'
			    ,closeBtn: 0
			    ,anim: 6 //动画类型
			  });
	 createCode();
	 return false;
	}
	
} 

    function checkForm(){
    	var error=document.getElementById("error").value;
        var userName=document.getElementById("userName").value;
        var password=document.getElementById("password").value;
        var inputCode = document.getElementById("J_codetext").value.toUpperCase();
        var codeToUp=code.toUpperCase();
        if(userName==null || userName==""){
        	  layer.alert('用户名不能为空', {
        		  icon: 5,
        		    skin: 'layui-layer-molv'
        		    ,closeBtn: 0
        		    ,anim: 6 //动画类型
        		  });
            return false;
        }
        if(password==null || password==""){
        	 layer.alert('密码不能为空', {
        		 icon: 5,
     		    skin: 'layui-layer-molv'
     		    ,closeBtn: 0
     		    ,anim: 6 //动画类型
     		  });
            return false;
        }
     
        if(inputCode.length <=0) {
        	 layer.alert('请输入验证码', {
        		 icon: 5,
      		    skin: 'layui-layer-molv'
      		    ,closeBtn: 0
      		    ,anim: 6 //动画类型
      		  });
          createCode();
          return false;
        }
        if(inputCode != codeToUp ){
          document.getElementById("J_codetext").value="";
          layer.alert('验证码错误', {
        	  icon: 5,
   		    skin: 'layui-layer-molv'
   		    ,closeBtn: 0
   		    ,anim: 2 //动画类型
   		    
   		  });
          createCode();
          return false;
        }
        return true;
    }
</script>
<script>
$(document).ready(function() {
  //粒子背景特效
  $('body').particleground({
    dotColor: '#5cbdaa',
    lineColor: '#5cbdaa'
  });
  //验证码
  createCode();
  //测试提交，对接程序删除即可
  $(".submit_btn").click(function(){
	  location.href="javascrpt:;"/*tpa=http://***index.html*/;
	  });
});
</script>
<script>
	//JavaScript代码区域
	 layui.use('layer', function(){
  var layer = layui.layer;
});              
	</script>
</head>
<body onload="error()">
<form id="submitForm"  action="Login.do"  method="post" onsubmit="return checkForm()">
<input type="hidden" value=${error} id="error"> 
<dl class="admin_login">
 
 <dt>
  <strong style = "color:white">余宗键个人博客后台管理</strong>
  <em style = "color:white"> Back-stage management system </em>
 </dt>
 <dd class="user_icon">
  <input type="text"  id="userName" name="account" placeholder="账号"  class="login_txtbx"/>
 </dd>
 <dd class="pwd_icon">
  <input type="password"  id="password"  name="password"  placeholder="密码" class="login_txtbx"/>
 </dd>
 <dd class="val_icon">
  <div class="checkcode">
    <input type="text" id="J_codetext" placeholder="验证码" maxlength="4" class="login_txtbx">
    <canvas class="J_codeimg" id="myCanvas" onclick="createCode()">对不起，您的浏览器不支持canvas，请下载最新版浏览器!</canvas>
  </div>
  <input type="button" value="验证码核验" class="ver_btn" onclick="validate()">
 </dd>
 <dd>
  <input type="submit" value="立即登陆" class="submit_btn"/>
 </dd>

 <dd>
  <p style = "color:black">© copyright</p>
 </dd>
</dl>
 </form>
</body>
</html>
