<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="../js/jquery-2.1.4.min.js"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="../js/bootstrap.min.js"></script>
    <link href="../css/bootstrap.min.css" rel="stylesheet"/>
    <title>登录</title>

    <style>
        body {
            background-image: url(../img/3.jpg);
            background-attachment: fixed;
            background-repeat: no-repeat;
            background-size: cover;
        }

        label {
            color: black;
            background-color: #5cb85c;
            border-radius: 50% 0 50% 0;
        }

        #login {
            opacity: 0.5;
        }
    </style>
</head>
<body>

<!-- login -->
<div class="jumbotron" id="login">
    <div class="container text-center">
        <h2>用户登录</h2>
        <p>...</p>
    </div>
</div>
<div class="container">
    <form class="form-horizontal" action="/login" >
        <div class="form-group">
            <div class="col-sm-3"></div>
            <label for="name" class="col-sm-1 control-label">用户名：</label>
            <div class="col-sm-5">
                <input type="text" class="form-control" id="name" name="name" placeholder="用户名">
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-3"></div>
            <label for="pwd" class="col-sm-1 control-label">密码：</label>
            <div class="col-sm-5">
                <input type="password" class="form-control" id="pwd" name="pwd" placeholder="密码">
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-4 col-sm-8">
                <button type="submit" class="btn btn-success">Sign in</button>
            </div>
        </div>
    </form>
    <!-- 底部导航 -->
    <nav class="navbar navbar-default navbar-fixed-bottom" style="background-color:lightgray">
        <div class="container">
            <span>@copyright 2019-3-3 吴某人</span>
        </div>
    </nav>
</div>
</body>
</html>