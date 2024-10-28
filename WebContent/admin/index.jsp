<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
 <base href="<%=basePath%>">
<meta charset="UTF-8">

<title>Insert title here</title>
        <link rel="stylesheet" href="css/font.css">
        <link rel="stylesheet" href="fontAlibaba/iconfont.css">
        <link rel="stylesheet" href="css/xadmin.css">
       <link rel="stylesheet" href="css/theme5.css"> 
        <script src="lib/layui/layui.js" charset="utf-8"></script>
        <script type="text/javascript" src="js/xadmin.js"></script>
        
        <script>
            
             var is_remember = false;
        </script>
        <style type="text/css">
          li{
          list-style: none
          }
        </style>
</head>
<body class="index">
        <!-- 顶部开始 -->
        <div class="container" >
            <div  style="width: 100%;text-align: center;padding-top: 30px">
                <a href="./index.html"><h1 style="font-family: 宋体;">人才招聘系统管理员后台</h2></a></div>
            
            <ul class="layui-nav right" lay-filter="" style="margin-top: -50px">
                <li class="layui-nav-item">
                    <a href="javascript:;">
                        
                        欢迎您，管理员
                    </a>
                 
                </li>
               
                <li class="layui-nav-item lafitewu_exit to-index">
                    <a href="Login.jsp"><i class="iconfont">&#xe704;</i>退出</a>
                </li>
            </ul>
        </div>
        <!-- 顶部结束 -->
        <!-- 中部开始 -->
        <!-- 左侧菜单开始 -->
        <div class="left-nav">
            <div id="side-nav">
                <ul id="nav">
                    <li>
                        <a href="admin/index.jsp">
                            <i class="iconfont left-nav-li" lay-tips="工作台">&#xe6fc;</i>
                                      <cite>网站首页</cite>
                            <i class="iconfont nav_right">&#xe697;</i>
                        </a>
                         <a href="selectAllCompanys" target="admin">
                            <i class="iconfont left-nav-li" lay-tips="工作台">&#xe6fc;</i>
                                      <cite>企业管理</cite>
                            <i class="iconfont nav_right">&#xe697;</i>
                         </a>
                          
                            <a href="selectAllPurchasers" target="admin">
                            <i class="iconfont left-nav-li" lay-tips="工作台">&#xe6fc;</i>
                                      <cite>用户管理</cite>
                            <i class="iconfont nav_right">&#xe697;</i>
                         </a>
                          <a href="admin/addNotice.jsp" target="admin">
                            <i class="iconfont left-nav-li" lay-tips="工作台">&#xe6fc;</i>
                                      <cite>添加动态</cite>
                            <i class="iconfont nav_right">&#xe697;</i>
                         </a>
                          <a href="selectAllNotice" target="admin">
                            <i class="iconfont left-nav-li" lay-tips="工作台">&#xe6fc;</i>
                                      <cite>动态管理</cite>
                            <i class="iconfont nav_right">&#xe697;</i>
                         </a>
                          <a href="admin/addType.jsp" target="admin">
                            <i class="iconfont left-nav-li" lay-tips="工作台">&#xe6fc;</i>
                                      <cite>添加分类</cite>
                            <i class="iconfont nav_right">&#xe697;</i>
                         </a>
                          <a href="admindeletetype" target="admin">
                            <i class="iconfont left-nav-li" lay-tips="工作台">&#xe6fc;</i>
                                      <cite>分类管理</cite>
                            <i class="iconfont nav_right">&#xe697;</i>
                         </a>
                         <a href="purchasers/index.jsp">
                            <i class="iconfont left-nav-li" lay-tips="工作台">&#xe6fc;</i>
                                      <cite>前台首页</cite>
                            <i class="iconfont nav_right">&#xe697;</i>
                         </a>

                       
                    </li>
                   
                </ul>
            </div>
        </div>
        <!-- <div class="x-slide_left"></div> -->
        <!-- 左侧菜单结束 -->
        <!-- 右侧主体开始 -->
        <div class="page-content">
            <div class="layui-tab tab" lay-filter="xbs_tab" lay-allowclose="false">
                
                
                <div class="layui-tab-content">
                    <div class="layui-tab-item layui-show">
                        <!-- welcome -->
                        <iframe src='admin/iframe.jsp'  name="admin" frameborder="0" scrolling="yes" class="x-iframe"></iframe>
                    </div>
                </div>
                <div id="tab_show"></div>
            </div>
        </div>
        <div class="page-content-bg"></div>

       
        <style id="theme_style"></style>
        <!-- 右侧主体结束 -->
        <!-- 中部结束 -->
    </body>
   <script>layui.use(['laydate', 'form', 'upload'],
        function() {
            var $ = layui.jquery
            
            $(".layui-tab-title li").click(function() {
                console.log($(this));
            });
        });

    </script>


</html>