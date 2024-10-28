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
    	   var loginaccount=document.getElementById("loginaccount1").value;
    	   if(loginaccount==''){
    		   alert("请输入账号");
               return false;
    	   }
    	   var password=document.getElementById("password1").value;
    	   if(password==''){
    		   alert("请输入密码");
               return false;
    	   }
    	   var truename=document.getElementById("truename1").value;
    	   if(truename==''){
    		   alert("请输入法人姓名");
               return false;
    	   }
    	   var telephone=document.getElementById("telephone1").value;
    	   if(telephone==''){
    		   alert("请输入电话");
               return false;
    	   }
    	   var telephone=document.getElementById("address1").value;
    	   if(telephone==''){
    		   alert("请输入公司地址");
               return false;
    	   }
    	   var telephone=document.getElementById("cname").value;
    	   if(telephone==''){
    		   alert("请输入工资名称");
               return false;
    	   }
          
          
        
       }
  
  </script>
<body>
 <div class="layui-fluid">
            <div class="layui-row layui-col-space15">
                <div class="layui-col-md12">
                <form class="layui-form" action="addCompanys" method="post">
                    <div class="layui-form-item">
                       
                        <div class="layui-input-block lafite_width_30">
                         <label class="layui-form-label">
                             <span>*</span>账号
                        </label>
                        <input type="text"  id="loginaccount1" name="loginaccount1"  style="width: 800px"   lay-verify="nikename" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                     <div class="layui-form-item">
                       
                        <div class="layui-input-block lafite_width_30">
                         <label class="layui-form-label">
                             <span>*</span>密码
                        </label>
                        <input type="text" id="password1" name="password1"  style="width: 800px"   lay-verify="nikename" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                     <div class="layui-form-item">
                       
                        <div class="layui-input-block lafite_width_30">
                         <label class="layui-form-label">
                             <span>*</span>法人姓名
                        </label>
                        <input type="text" id="truename1"  name="truename1"  style="width: 800px"   lay-verify="nikename" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                     <div class="layui-form-item">
                       
                        <div class="layui-input-block lafite_width_30">
                         <label class="layui-form-label">
                             <span>*</span>电话
                        </label>
                        <input type="text" id="telephone1" name="telephone1"  style="width: 800px"   lay-verify="nikename" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-form-item">
                       
                        <div class="layui-input-block lafite_width_30">
                         <label class="layui-form-label">
                             <span>*</span>公司地址
                        </label>
                        <input type="text" id="address1" name="address1"  style="width: 800px"   lay-verify="nikename" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                   <div class="layui-form-item">
                       
                        <div class="layui-input-block lafite_width_30">
                         <label class="layui-form-label">
                             <span>*</span>公司名称
                        </label>
                        <input type="text" id="cname" name="cname"  style="width: 800px"   lay-verify="nikename" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-form-item" style="margin-top: 30px">
                        <div class="layui-input-block">
                           
                           
                        <input type="submit"  onClick="return check()" value="确认注册"   lay-filter="formDemo" class="lafite-layui-btn2 lafite_margin_left_20px"/>
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