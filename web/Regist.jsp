<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link type="text/css" rel="stylesheet" href="css/style.css" />
    <!--[if IE 6]>
    <script src="js/iepng.js" type="text/javascript"></script>
    <script type="text/javascript">
        EvPNG.fix('div, ul, img, li, input, a');
    </script>
    <![endif]-->    
    <script type="text/javascript" src="js/jquery-1.11.1.min_044d0927.js"></script>
	<script type="text/javascript" src="js/jquery.bxslider_e88acd1b.js"></script>
    
    <script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
    <script type="text/javascript" src="js/menu.js"></script>    
        
	<script type="text/javascript" src="js/select.js"></script>
    
	<script type="text/javascript" src="js/lrscroll.js"></script>
    
    <script type="text/javascript" src="js/iban.js"></script>
    <script type="text/javascript" src="js/fban.js"></script>
    <script type="text/javascript" src="js/f_ban.js"></script>
    <script type="text/javascript" src="js/mban.js"></script>
    <script type="text/javascript" src="js/bban.js"></script>
    <script type="text/javascript" src="js/hban.js"></script>
    <script type="text/javascript" src="js/tban.js"></script>
    
	<script type="text/javascript" src="js/lrscroll_1.js"></script>

    <script type="text/javascript">

        $(function () {
            $("[name='userName']").blur(function () {

                $.ajax({
                    url:'regist',  //请求的地址
                    type:'post',  //请求的方式
                    dataType:'text',  //数据类型
                    data:'userName='+this.value,  //传递到后台的参数
                    success:function (datas) {  //接受的返回值
                        if(datas == 'true') {
                            $("[name='msg']").html("×用户名已存在");
                        }
                        else {
                            $("[name='msg']").html("√用户名可用");
                        }
                    },
                    error:function () {
                        alert("ajax请求失败")
                    }
                })
            })
        })

    </script>

    <script type="text/javascript">

        $(function () {
            $("[name='member']").blur(function () {

                $.ajax({
                    url:'member',  //请求的地址
                    type:'post',  //请求的方式
                    dataType:'text',  //数据类型
                    data:'member='+this.value,  //传递到后台的参数
                    success:function (datas) {  //接受的返回值
                        if(datas == 'true') {
                            $("[name='msg6']").html("√");
                        }
                        else {
                            $("[name='msg6']").html("会员不存在");
                        }
                    },
                    error:function () {
                        alert("ajax请求失败")
                    }
                })
            })
        })

    </script>

    <script type="text/javascript"> //用户名正则判断
        function checkuser() {
            var username = $("#user").val();
            var reg = /^[a-zA-Z]([a-zA-Z0-9]{2,14})$/;
            if (reg.test(username)){
                $("[name='msg1']").html("");
                return true;
            }else {
                $("[name='msg1']").html("格式错误");
                return false;
            }
        }
    </script>

    <script type="text/javascript"> //密码正则判断
    function checkpwd() {
        var pwd = $("#pwd").val();
        var reg = /^[a-zA-Z]([a-zA-Z0-9]{7,14})$/;
        if (reg.test(pwd)){
            $("[name='msg2']").html("√");
            return true;
        }else {
            $("[name='msg2']").html("格式错误");
            return false;
        }
    }

    function checkpwdAg() {   //确认密码
        var pwdag = $("#pwdag").val();
        if ($("#pwd").val() == pwdag){
            $("[name='msg3']").html("√");
            return true;
        }else {
            $("[name='msg3']").html("两次密码不一致");
            return false;
        }
    }
    </script>

    <script type="text/javascript"> //邮箱正则判断
    function checkemail() {
        var email = $("#email").val();
        var reg = /^\w[-\w.+]*@([A-Za-z0-9][-A-Za-z0-9]+\.)+[A-Za-z]{2,14}$/;
        if (reg.test(email)){
            $("[name='msg4']").html("√");
            return true;
        }else {
            $("[name='msg4']").html("格式错误");
            return false;
        }
    }
    </script>

    <script type="text/javascript"> //手机号正则判断
    function checkphone() {
        var phone = $("#pho").val();
        var reg = /^(13|14|15|17|18)[0-9]{9}$/;
        if (reg.test(phone)){
            $("[name='msg5']").html("√");
            return true;
        }else {
            $("[name='msg5']").html("格式错误");
            return false;
        }
    }
    </script>

<title>尤洪</title>
</head>
<body>  
<!--Begin Header Begin-->
<div class="soubg">
	<div class="sou">
        <span class="fr">
        	<span class="fl">你好，请<a href="Login.html">登录</a>&nbsp; <a href="Regist.jsp" style="color:#ff4e00;">免费注册</a>&nbsp; </span>
            <span class="fl">|&nbsp;关注我们：</span>
            <span class="s_sh"><a href="#" class="sh1">新浪</a><a href="#" class="sh2">微信</a></span>
            <span class="fr">|&nbsp;<a href="#">手机版&nbsp;<img src="images/s_tel.png" align="absmiddle" /></a></span>
        </span>
    </div>
</div>
<!--End Header End--> 
<!--Begin Login Begin-->
<div class="log_bg">	
    <div class="top">
        <div class="logo"><a href="Index.html"><img src="images/logo.png" /></a></div>
    </div>
	<div class="regist">
    	<div class="log_img"><img src="images/l_img.png" width="611" height="425" /></div>
		<div class="reg_c">



            <form action="regist" method="post">
                <table border="0" style="width:420px; font-size:14px; margin-top:20px;" cellspacing="0" cellpadding="0">
                  <tr height="50" valign="top">
                    <td width="95">&nbsp;</td>
                    <td>
                        <span class="fl" style="font-size:24px;">注册</span>
                        <span class="fr">已有商城账号，<a href="Login.html" style="color:#ff4e00;">我要登录</a></span>
                    </td>
                  </tr>
                  <tr height="50">
                    <td align="right"><font color="#ff4e00">*</font>&nbsp;用户名 &nbsp;</td>
                    <td>
                        <input type="text" name="userName" id="user" value="" placeholder="以英文字母开头，字母和数字组合3-15位" class="l_user" onblur="checkuser()" />
                        <div name="msg"></div>
                        <div name="msg1"></div>
                    </td>
                  </tr>
                  <tr height="50">
                    <td align="right"><font color="#ff4e00">*</font>&nbsp;密码 &nbsp;</td>
                    <td>
                        <input type="password" name="password" id="pwd" value="" class="l_pwd" onblur="checkpwd()"/>
                        <div name="msg2"></div>
                    </td>
                  </tr>
                  <tr height="50">
                    <td align="right"><font color="#ff4e00">*</font>&nbsp;确认密码 &nbsp;</td>
                    <td>
                        <input type="password" name="passwordAgain" id="pwdag" value="" class="l_pwd" onblur="checkpwdAg()" />
                        <div name="msg3"></div>
                    </td>
                  </tr>
                  <tr height="50">
                    <td align="right"><font color="#ff4e00">*</font>&nbsp;邮箱 &nbsp;</td>
                    <td>
                        <input type="text" name="mail" id="email" value="" class="l_email" onblur="checkemail()" />
                        <div name="msg4"></div>
                    </td>
                  </tr>
                  <tr height="50">
                    <td align="right"><font color="#ff4e00">*</font>&nbsp;手机 &nbsp;</td>
                    <td>
                        <input type="text" name="phone" id="pho" value="" class="l_tel" onblur="checkphone()" />
                        <div name="msg5"></div>
                    </td>
                  </tr>
                  <tr height="50">
                    <td align="right">邀请人会员名 &nbsp;</td>
                    <td>
                        <input type="text" name="member" value="" class="l_mem" onblur="checkmember()" />
                        <div name="msg6"></div>
                    </td>
                  </tr>
                  <tr height="50">
                    <td align="right">邀请人ID号 &nbsp;</td>
                    <td>
                        <input type="text" name="id" value="" class="l_num" onblur="checkmemberid()" />
                        <div name="msg7"></div>
                    </td>
                  </tr>
                  <tr height="50">
                    <td align="right"> <font color="#ff4e00">*</font>&nbsp;验证码 &nbsp;</td>
                    <td>
                        <input type="text" name="test" value="" class="l_ipt" />
                        <a href="#" style="font-size:12px; font-family:'宋体';">换一张</a>
                    </td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                    <td style="font-size:12px; padding-top:20px;">
                        <span style="font-family:'宋体';" class="fl">
                            <label class="r_rad"><input type="checkbox" /></label><label class="r_txt">我已阅读并接受《用户协议》</label>
                        </span>
                    </td>
                  </tr>
                  <tr height="60">
                    <td>&nbsp;</td>
                    <td><input type="submit" value="立即注册" class="log_btn" /></td>
                  </tr>
                </table>
            </form>
        </div>
    </div>
</div>
<!--End Login End--> 
<!--Begin Footer Begin-->
<div class="btmbg">
    <div class="btm">
        备案/许可证编号：蜀ICP备12009302号-1-www.dingguagua.com   Copyright © 2015-2018 尤洪商城网 All Rights Reserved. 复制必究 , Technical Support: Dgg Group <br />
        <img src="images/b_1.gif" width="98" height="33" /><img src="images/b_2.gif" width="98" height="33" /><img src="images/b_3.gif" width="98" height="33" /><img src="images/b_4.gif" width="98" height="33" /><img src="images/b_5.gif" width="98" height="33" /><img src="images/b_6.gif" width="98" height="33" />
    </div>    	
</div>
<!--End Footer End -->    

</body>


<!--[if IE 6]>
<script src="//letskillie6.googlecode.com/svn/trunk/2/zh_CN.js"></script>

<![endif]-->
</html>
