<%@ page contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>登录</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="../css/header.css" rel="stylesheet"/>
    <link href="../css/footer.css" rel="stylesheet"/>
    <link href="../css/animate.css" rel="stylesheet"/>
    <link href="../css/login.css" rel="stylesheet"/>
   <!-- <link rel="stylesheet" type="text/css"
          href="../css/style.css" />-->
</head>
<body>
<div id="container">
    <div class="top">
        <img src="../images/logo.png" width=200px height=200px alt=""/>
    </div>
    <div id="cover" class="rt">
        <form id="login-form" method="post" name="form1">
            <div class="txt">
                <p>
                    登录<span><a href="${pageContext.request.contextPath}/user/showRegister.do">新用户注册</a></span>
                </p>
                <div class="text">
                    <input type="text"
                           placeholder="请输入您的用户名"
                           name="lname"
                           id="username"
                           required>
                </div>

                <div class="text">
                    <input type="password"
                           id="password"
                           placeholder="请输入您的密码"
                           name="lwd"
                           required minlength="6" maxlength="15">
                </div>
                <br>
                <div class="chose">
                    <input type="checkbox"
                           class="checkbox"
                           id="ck_rmbUser"
                    >自动登录
                    <span>忘记密码？</span>
                </div>
                <br>
                <input class="button_login"
                       type="button"
                       value="登录"
                       id="bt-login"
                />
            </div>
        </form>
    </div>
</div>
</body>
<script src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
<script src="${pageContext.request.contextPath}/jquery/jquery.cookie.js"></script>
<script>
    $("#username").blur(function(){
        var data = $("#username").val();
        if (data == null || data == "") {
            $("#showResult").text("用户名不能为空！");
            $("#showResult").css("color","red");
            return false;
        }
        $.ajax({
            type:"POST",
            url:"checkLoginUsername.do",
            data:"username="+data,
            beforeSend:function(XMLHttpRequest)
            {
                $("#showResult").text("正在查询");

            },
            success:function(data) /*msg*/
            {
            	$("#showResult").text(data.message);
            	/*
                if(msg ==="yes"){
                    $("#showResult").text("该用户名可以被使用");
                }else if(msg === 'no'){
                    $("#showResult").text("该用户名不存在");
                    $("#showResult").css("color","red");
                }else {
                    $("#showResult").text("系统异常！");
                    $("#showResult").css("color","red");
                }*/
            },
            error:function()
            {
                //错误处理
            }
        });
    });
</script>
<script>
    $('#bt-login').click(function(){
        
        //异步提交请求，进行验证
       $.ajax({
    	   "url":"${pageContext.request.contextPath}/user/login.do",
    	   "data":"username="+$("#username").val()+"&password="+$("#password").val(),
    	   "type":"POST",
    	   "dataType":"json",
    	   "success":function(obj){
    		   if(obj.state==1){
    			   Save();
    			   location.href="${pageContext.request.contextPath}/news/showNewsItem.do";
    			   //${pageContext.request.contextPath}/main/showIndex.do
    		   }else{
    			   alert(obj.message);
    		   }
    		   
    	   }
       });
    });
</script>
<script type="text/javascript">

    $(document).ready(function () {
        if ($.cookie("rmbUser") == "true") {
            $("#ck_rmbUser").attr("checked", true);
            $("#username").val($.cookie("username"));
            $("#password").val($.cookie("password"));
        }
    });

    //记住用户名密码
    function Save() {
        if ($("#ck_rmbUser").prop("checked")) {
            var str_username = $("#username").val();
            console.log(str_username);
            var str_password = $("#password").val();
            $.cookie("rmbUser", "true", { expires: 7 }); //存储一个带7天期限的cookie
            $.cookie("username", str_username, { expires: 7 });
            $.cookie("password", str_password, { expires: 7 });
        }
        else {
            $.cookie("rmbUser", "false", { expire: -1 });
            $.cookie("username", "", { expires: -1 });
            $.cookie("password", "", { expires: -1 });
        }
    };
</script>
</html>