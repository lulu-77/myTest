<%@ page contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
   
<!DOCTYPE html>
<html>
<head lang="en">
  <meta charset="UTF-8">
  <title>学子商城注册页面</title>
  <link href="../css/header.css" rel="stylesheet"/>
  <link href="../css/footer.css" rel="stylesheet"/>
  <link href="../css/animate.css" rel="stylesheet"/>
  <link href="../css/login.css" rel="stylesheet" />
</head>
<body>
<div class="parent">
  <div class="container">
    <img src="../images/logo.png" alt="" width="250px"  height="250px" hspace="30px" vspace="30px" />
    <div class="panel rt">
      <form id="form-register" method="post" action="user/register.do" >
        <div class="txt">
          <p>新用户注册
            <span>
              <a href="${pageContext.request.contextPath}/user/showLogin.do">直接登录</a>
            </span>
          </p>
        </div>
        <div class="form-group">
          <label for="uname">用户名：</label>
          <input autocomplete required minlength="6" maxlength="9" type="text" placeholder="请输入用户名" autofocus name="uname" id="uname"/>
          <span class="msg-default" id="usernamespan">用户名长度在6到9位之间</span>
        </div>
        <div class="form-group">
          <label for="upwd">登录密码：</label>
          <input required type="password" minlength="6" maxlength="12" placeholder="请输入密码" name="upwd" autofocus id="upwd"/>
          <span class="msg-default hidden">密码长度在6到12位之间</span>
        </div>
		 <div class="form-group">
          <label for="upwdconfirm">确认密码：</label>
          <input required type="password" minlength="6" maxlength="12" placeholder="请确认密码" name="upwdconfirm" autofocus id="upwdconfirm"/>
          <span class="msg-default hidden">密码长度在6到12位之间</span>
        </div>
        <div class="form-group">
          <label for="email">邮箱：</label>
          <input autocomplete required type="email" placeholder="请输入邮箱地址" name="email" id="email"/>
          <span class="msg-default hidden" id="emailspan">请输入合法的邮箱地址</span>
        </div>
        <div class="form-group">
          <label for="phone">手机号：</label>
          <input id="phone" name="phone" placeholder="请输入您的手机号" pattern="(\d{11})|^((\d{7,8})|(\d{4}|\d{3})-(\d{7,8})|(\d{4}|\d{3})-(\d{7,8})-(\d{4}|\d{3}|\d{2}|\d{1})|(\d{7,8})-(\d{4}|\d{3}|\d{2}|\d{1}))$" required type="text" />
          <span class="msg-default hidden" id="phonespan">请输入合法的手机号</span>
        </div>
        <div class="form-group">
          <label></label>
          <input type="button" value="提交注册信息" id="bt-register" style="background:#f3bc85"/>
        </div>
      </form>
    </div>
  </div>
</div>
<!--弹出的小广告-->
<script src="../js/jquery.min.js"></script>
<script>
  $('#bt-register').click(function(){
    var lengths=0;
    $('.form-group').each(function(){
      if($(this).find('span').hasClass('msg-success')){
        lengths++;
      }
      
    });
    
    	if(lengths==5){
    		$.ajax({
    	    	"url":"${pageContext.request.contextPath}/user/register.do",
    	    	"data":$("#form-register").serialize(),
    	    	"type":"POST",
    	    	"dataType":"json",
    	    	"success":function(obj){
    	    		//用户名重复
    	    		if(obj==0){
    	    			alert(obj.message);
    	    		}else{
    	    			location.href="${pageContext.request.contextPath}/user/showLogin.do";
    	    		}
    	    		
       	    }
    	    	});
    	}
  })
</script>
<script>
  /*1.对用户名进行验证*/
  uname.onblur = function(){
    if(this.validity.valueMissing){
      this.nextElementSibling.innerHTML = '用户名不能为空';
      this.nextElementSibling.className = 'msg-error';
      this.setCustomValidity('用户名不能为空');
    }else if(this.validity.tooShort){
      this.nextElementSibling.innerHTML = '用户名不能少于6位';
      this.nextElementSibling.className = 'msg-error';
      this.setCustomValidity('用户名不能少于6位');
    }else {
      this.nextElementSibling.innerHTML = '用户名格式正确';
      this.nextElementSibling.className = 'msg-success';
      this.setCustomValidity('');
      var data =document.getElementById("uname").value;
      if(!data){   //用户没有输入任何内容
        return;
      }
      /**发起异步GET请求，询问服务器用户名是否已经存在**/
      $.ajax({
	  		"url":"${pageContext.request.contextPath}/user/checkUsername.do",
	  		"type":"GET",
	  		"data":"username="+$("#uname").val(),
	  		"dataType":"json",
	  		"success":function(obj){
	  			
	  			$("#usernamespan").html(obj.message);
	  			if(obj.state==0){
	  				$("#usernamespan").attr("class","msg-error");
	  			}else{
	  				$("#usernamespan").attr("class","msg-success");
	  			}
	  		}
  		});
    }
  }

  uname.onfocus = function(){
    this.nextElementSibling.innerHTML = '用户名长度在6到9位之间';
    this.nextElementSibling.className = 'msg-default';
  }
  upwd.onfocus = function(){
    this.nextElementSibling.innerHTML = '密码长度在6到12位之间';
    this.nextElementSibling.className = 'msg-default';
  }
  upwd.onblur = function(){
    if(this.validity.valueMissing){
      this.nextElementSibling.innerHTML = '密码不能为空';
      this.nextElementSibling.className = 'msg-error';
      this.setCustomValidity('密码不能为空');
    }else if(this.validity.tooShort){
      this.nextElementSibling.innerHTML = '密码长度在尽量别少于6位';
      this.nextElementSibling.className = 'msg-error';
      this.setCustomValidity('密码长度在尽量别少于6位');
    }else {
      this.nextElementSibling.innerHTML = '密码格式正确';
      this.nextElementSibling.className = 'msg-success';
      this.setCustomValidity('');
    }
    
	//如果再次输入密码框中有信息，再去判断两次密码输入是否一致
    if(upwdconfirm.value){
	    upwdconfirm.onblur();
    }
  }
  

  upwdconfirm.onfocus = function(){
    this.nextElementSibling.innerHTML = '密码长度在6到12位之间';
    this.nextElementSibling.className = 'msg-default';
  }
  upwdconfirm.onblur = function(){
    if(this.validity.valueMissing){
      this.nextElementSibling.innerHTML = '密码不能为空';
      this.nextElementSibling.className = 'msg-error';
      this.setCustomValidity('密码不能为空');
    }else if(this.validity.tooShort){
      this.nextElementSibling.innerHTML = '密码长度在尽量别少于6位';
      this.nextElementSibling.className = 'msg-error';
      this.setCustomValidity('密码长度在尽量别少于6位');
    }else {
      this.nextElementSibling.innerHTML = '密码格式正确';
      this.nextElementSibling.className = 'msg-success';
      this.setCustomValidity('');
    }
    

    //如果两次密码输入不一致，信息提示
    if(this.value != upwd.value){
    	this.nextElementSibling.innerHTML = '两次输入密码不一致';
        this.nextElementSibling.className = 'msg-error';
        this.setCustomValidity('两次输入密码不一致');
    }
  }
  
  /*3.对邮箱地址进行验证*/
  email.onblur = function(){
    if(this.validity.valueMissing){
      this.nextElementSibling.innerHTML = '邮箱不能为空';
      this.nextElementSibling.className = 'msg-error';
      this.setCustomValidity('邮箱不能为空');
    }else if(this.validity.typeMismatch){
      this.nextElementSibling.innerHTML = '邮箱格式不正确';
      this.nextElementSibling.className = 'msg-error';
      this.setCustomValidity('邮箱格式不正确');
    }else {
      this.nextElementSibling.innerHTML = '邮箱格式正确';
      this.nextElementSibling.className = 'msg-success';
      this.setCustomValidity('');

      var data =document.getElementById("email").value;
      if(!data){   //用户没有输入任何内容
        return;
      }
      /**发起异步GET请求，询问服务器邮箱是否已经存在**/
      $.ajax({
	  		"url":"${pageContext.request.contextPath}/user/checkEmail.do",
	  		"type":"GET",
	  		"data":"email="+$("#email").val(),
	  		"dataType":"json",
	  		"success":function(obj){
	  			
	  			$("#emailspan").html(obj.message);
	  			if(obj.state==0){
	  				$("#emailspan").attr("class","msg-error");
	  			}else{
	  				$("#emailspan").attr("class","msg-success");
	  			}
	  		}
		});
    }
  }
  email.onfocus = function(){
    this.nextElementSibling.innerHTML = '请输入合法的邮箱地址';
    this.nextElementSibling.className = 'msg-default';
  }
  /*3.对手机号进行验证*/
  phone.onblur = function(){
    if(this.validity.valueMissing){
      this.nextElementSibling.innerHTML = '手机号不能为空';
      this.nextElementSibling.className = 'msg-error';
      this.setCustomValidity('手机号不能为空');
    }else if(this.validity.patternMismatch){
      this.nextElementSibling.innerHTML = '手机号格式不正确';
      this.nextElementSibling.className = 'msg-error';
      this.setCustomValidity('手机号格式不正确');
    }else {
      this.nextElementSibling.innerHTML = '手机号格式正确';
      this.nextElementSibling.className = 'msg-success';
      this.setCustomValidity('');

      var data =document.getElementById("phone").value;
      if(!data){   //用户没有输入任何内容
        return;
      }
      /**发起异步GET请求，验证电话号码是否已经存在**/
      $.ajax({
	  		"url":"${pageContext.request.contextPath}/user/checkPhone.do",
	  		"type":"GET",
	  		"data":"phone="+$("#phone").val(),
	  		"dataType":"json",
	  		"success":function(obj){
	  			
	  			$("#phonespan").html(obj.message);
	  			if(obj.state==0){
	  				$("#phonespan").attr("class","msg-error");
	  			}else{
	  				$("#phonespan").attr("class","msg-success");
	  			}
	  		}
		});
    }
  }
  phone.onfocus = function(){
    this.nextElementSibling.innerHTML = '请输入合法的手机号';
    this.nextElementSibling.className = 'msg-default';
  }
</script>
</body>
</html>