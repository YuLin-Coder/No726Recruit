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
        <script type="text/javascript" src="../lib/layui/layui.js" charset="utf-8"></script>
        <script type="text/javascript" src="js/xadmin.js"></script>
</head>

<body>
 <div class="layui-fluid">
            <div class="layui-row layui-col-space15">
                <div class="layui-col-md12">
                <form class="layui-form"  enctype="multipart/form-data" action="addResumes" method="post">
                    <div class="layui-form-item">
                       <div class="layui-input-block lafite_width_30">
                         <label class="layui-form-label">
                             <span>*</span>证件照
                        </label>
                        <input type="file"  name="file" >
                        </div>
                        <div class="layui-input-block lafite_width_30">
                         <label class="layui-form-label">
                             <span>*</span>简历名称
                        </label>
                        <input type="text"   name="rname"  style="width: 800px"   lay-verify="nikename" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                     <div class="layui-form-item">
                       
                        <div class="layui-input-block lafite_width_30">
                         <label class="layui-form-label">
                             <span>*</span>年龄信息
                        </label>
                        <input type="text" name="age"  style="width: 800px"   lay-verify="nikename" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                     <div class="layui-form-item">
                       
                        <div class="layui-input-block lafite_width_30">
                         <label class="layui-form-label">
                             <span>*</span>选择性别
                        </label>
                        
                                <select  name="rsex" style="width: 800px"   lay-verify="nikename" autocomplete="off" class="layui-input">
                                   <option>男</option><option>女</option>
                                </select>
                        </div>
                    </div>
                     <div class="layui-form-item">
                       
                        <div class="layui-input-block lafite_width_30">
                         <label class="layui-form-label">
                             <span>*</span>毕业时间
                        </label>
                        <input type="date"  name="rtimes"  style="width: 800px"   lay-verify="nikename" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-form-item">
                       
                        <div class="layui-input-block lafite_width_30">
                         <label class="layui-form-label">
                             <span>*</span>学历信息
                        </label>
                        <input type="text"  name="rxl"  style="width: 800px"   lay-verify="nikename" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                   <div class="layui-form-item">
                       
                        <div class="layui-input-block lafite_width_30">
                         <label class="layui-form-label">
                             <span>*</span>专业信息
                        </label>
                        <input type="text" name="rzunanye"  style="width: 800px"   lay-verify="nikename" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                     <div class="layui-form-item">
                       
                        <div class="layui-input-block lafite_width_30">
                         <label class="layui-form-label">
                             <span>*</span>电话号码
                        </label>
                        <input type="text" name="rphone"  style="width: 800px"   lay-verify="nikename" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                     <div class="layui-form-item">
                       
                        <div class="layui-input-block lafite_width_30">
                         <label class="layui-form-label">
                             <span>*</span>个人介绍
                        </label>
                        <input type="text" name="rintroduce"  style="width: 800px"   lay-verify="nikename" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                     <div class="layui-form-item">
                       
                        <div class="layui-input-block lafite_width_30">
                         <label class="layui-form-label">
                             <span>*</span>姓名信息
                        </label>
                        <input type="text" name="pname"  style="width: 800px"   lay-verify="nikename" autocomplete="off" class="layui-input">
                        </div>
                    </div>


                    <div class="layui-form-item" style="margin-top: 30px">
                        <div class="layui-input-block">
                           
                           
                        <input type="submit"  onClick="return check()" value="确认制作"   lay-filter="formDemo" class="lafite-layui-btn2 lafite_margin_left_20px"/>
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