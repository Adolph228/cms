<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Amaze UI Admin index Examples</title>
    <meta name="description" content="这是一个 index 页面">
    <meta name="keywords" content="index">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="icon" type="image/png" href="static/i/favicon.png">
    <link rel="apple-touch-icon-precomposed" href="static/i/app-icon72x72@2x.png">
    <meta name="apple-mobile-web-app-title" content="Amaze UI" />
    <link rel="stylesheet" href="static/css/amazeui.min.css" />
    <link rel="stylesheet" href="static/css/amazeui.datatables.min.css" />
    <link rel="stylesheet" href="static/css/app.css">
    <script src="static/js/jquery.min.js"></script>

</head>

<body data-type="login">
    <script src="static/js/theme.js"></script>
    <div class="am-g tpl-g">
        <!-- 风格切换 -->
        <div class="tpl-skiner">
            <div class="tpl-skiner-toggle am-icon-cog">
            </div>
            <div class="tpl-skiner-content">
                <div class="tpl-skiner-content-title">
                    选择主题
                </div>
                <div class="tpl-skiner-content-bar">
                    <span class="skiner-color skiner-white" data-color="theme-white"></span>
                    <span class="skiner-color skiner-black" data-color="theme-black"></span>
                </div>
            </div>
        </div>
        <div class="tpl-login">
            <div class="tpl-login-content">
                <div class="tpl-login-logo">

                </div>



                <form class="am-form tpl-form-line-form" action="" method="post">
                    <div class="am-form-group">
                        <input type="text" class="tpl-form-input" id="username" name="username"  placeholder="请输入账号">

                    </div>

                    <div class="am-form-group">
                        <input type="text" class="tpl-form-input" id="password" name="password"  placeholder="请输入密码">

                    </div>
                    <div class="am-form-group tpl-login-remember-me">
                        <input id="remember-me" type="checkbox">
                        <label for="remember-me">
       
                        记住密码
                         </label>

                    </div>






                    <div class="am-form-group">

                        <input type="submit" value="登录" class="am-btn am-btn-primary  am-btn-block tpl-btn-bg-color-success  tpl-login-btn"/>

                    </div>
                </form>
            </div>
        </div>
    </div>
    <script src="static/js/amazeui.min.js"></script>
    <script src="static/js/app.js"></script>

</body>

</html>