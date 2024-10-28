<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html class="x-admin-sm">
<head>
 <base href="<%=basePath%>">
<meta charset="UTF-8">

<title>Insert title here</title>
        <link rel="stylesheet" href="css/font.css">
        <link rel="stylesheet" href="css/xadmin.css">
        <script type="text/javascript" src="lib/layui/layui.js" charset="utf-8"></script>
        <script type="text/javascript" src="js/xadmin.js"></script>
</head>

<body>
<img src="images/logo3.png" style="width: 100%;height: 300px">
 <div class="layui-fluid">
            <div class="layui-row layui-col-space15">
                <div class="layui-col-md12">
                <form class="layui-form" action="companysLogin" method="post" style="margin-left: 170px">
                    <div class="layui-form-item">
                       
                        <div class="layui-input-block lafite_width_30">
                         <label class="layui-form-label">
                             <span>*</span>账号
                        </label>
                        <input type="text" name="loginaccount1"  style="width: 800px"   lay-verify="nikename" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-form-item" style="margin-top:20px;">
                       
                        <div class="layui-input-block lafite_width_30">
                         <label class="layui-form-label">
                             <span>*</span>密码
                        </label>
                        <input type="password" name="password1"  style="width: 800px;"   lay-verify="nikename" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                     <div class="layui-form-item" style="margin-top:20px;">
                       
                        <div class="layui-input-block lafite_width_30">
                         <label class="layui-form-label">
                             <span>*</span>身份
                        </label>
                           <select  style="width: 800px;"  name="a"  lay-verify="nikename" autocomplete="off" class="layui-input">
                             <option value="1">企业</option>
                             <option value="2">用户</option>
                             <option>管理员</option>
                           </select>
                        </div>
                    </div>
                    <div class="layui-form-item" style="margin-top: 30px">
                        <div class="layui-input-block">
                           
                           
                        <input type="submit" value="登录"   lay-filter="formDemo" class="lafite-layui-btn2 lafite_margin_left_20px"/>
                        <input type="reset" value="重置"  class="lafite-layui-btn" />
                       
                        </div>
                    </div>
                    </form>
                </div>
            </div>
        </div>

<p>&nbsp;</p>
</body>
</html>