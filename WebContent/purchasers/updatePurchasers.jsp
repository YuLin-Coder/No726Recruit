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
<script type="text/javascript">
       function check(){
    	   var loginaccount=document.getElementById("loginaccount").value;
    	   if(loginaccount==''){
    		   alert("请输入账号");
               return false;
    	   }
    	   var password=document.getElementById("password").value;
    	   if(password==''){
    		   alert("请输入密码");
               return false;
    	   }
    	   var truename=document.getElementById("truename").value;
    	   if(truename==''){
    		   alert("请输入姓名");
               return false;
    	   }
    	   var telephone=document.getElementById("telephone").value;
    	   if(telephone==''){
    		   alert("请输入电话");
               return false;
    	   }
          
          
        
       }
  
  </script>
<body>
 <div class="layui-fluid">
            <div class="layui-row layui-col-space15">
                <div class="layui-col-md12">
                <form class="layui-form" action="updatePurchasers1" method="post">
                 <input type="hidden" name="pid" value="${Purchasers.pid}">
                    <div class="layui-form-item">
                       
                        <div class="layui-input-block lafite_width_30">
                         <label class="layui-form-label">
                             <span>*</span>账号
                        </label>
                        <input type="text"  value="${Purchasers.loginaccount}" disabled="disabled" id="loginaccount" name="loginaccount"  style="width: 800px"   lay-verify="nikename" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                     <div class="layui-form-item">
                       
                        <div class="layui-input-block lafite_width_30">
                         <label class="layui-form-label">
                             <span>*</span>密码
                        </label>
                        <input type="text" value="${Purchasers.password}" id="password" name="password"  style="width: 800px"   lay-verify="nikename" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                     <div class="layui-form-item">
                       
                        <div class="layui-input-block lafite_width_30">
                         <label class="layui-form-label">
                             <span>*</span>姓名
                        </label>
                        <input type="text"  value="${Purchasers.truename}" id="truename"  name="truename"  style="width: 800px"   lay-verify="nikename" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                     <div class="layui-form-item">
                       
                        <div class="layui-input-block lafite_width_30">
                         <label class="layui-form-label">
                             <span>*</span>电话
                        </label>
                        <input type="text" value="${Purchasers.telephone}" id="telephone" name="telephone"  style="width: 800px"   lay-verify="nikename" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                   
                    <div class="layui-form-item" style="margin-top: 30px">
                        <div class="layui-input-block">
                           
                           
                        <input type="submit"  onClick="return check()" value="确认修改"   lay-filter="formDemo" class="lafite-layui-btn2 lafite_margin_left_20px"/>
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