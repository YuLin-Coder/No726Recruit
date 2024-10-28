<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
 <div class="layui-fluid">
            <div class="layui-row layui-col-space15">
                <div class="layui-col-md12">
                <form class="layui-form" action="addWorks" method="post">
                    <div class="layui-form-item">
                       
                        <div class="layui-input-block lafite_width_30">
                         <label class="layui-form-label">
                             <span>*</span>工作名称
                        </label>
                        <input type="text" name="wname"  style="width: 800px"   lay-verify="nikename" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                     <div class="layui-form-item">
                       
                        <div class="layui-input-block lafite_width_30">
                         <label class="layui-form-label">
                             <span>*</span>工资范围
                        </label>
                        <input type="text" name="moneys"  style="width: 800px"   lay-verify="nikename" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                     <div class="layui-form-item">
                       
                        <div class="layui-input-block lafite_width_30">
                         <label class="layui-form-label">
                             <span>*</span>学历要求
                        </label>
                        <input type="text" name="worksxl"  style="width: 800px"   lay-verify="nikename" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                     <div class="layui-form-item">
                       
                        <div class="layui-input-block lafite_width_30">
                         <label class="layui-form-label">
                             <span>*</span>经验要求
                        </label>
                        <input type="text" name="worksjy"  style="width: 800px"   lay-verify="nikename" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                     <div class="layui-form-item">
                       
                        <div class="layui-input-block lafite_width_30">
                         <label class="layui-form-label">
                             <span>*</span>工作地点
                        </label>
                        <input type="text" name="worksaddress"  style="width: 800px"   lay-verify="nikename" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                     <div class="layui-form-item">
                       
                        <div class="layui-input-block lafite_width_30">
                         <label class="layui-form-label">
                             <span>*</span>有效日期
                        </label>
                        <input type="date"   name="times1"  style="width: 800px"   lay-verify="nikename" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                     <div class="layui-form-item">
                       
                        <div class="layui-input-block lafite_width_30">
                         <label class="layui-form-label">
                             <span>*</span>工作介绍
                        </label>
                        <input type="text" name="introduce"  style="width: 800px"   lay-verify="nikename" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                     <div class="layui-form-item">
                       
                        <div class="layui-input-block lafite_width_30">
                         <label class="layui-form-label">
                             <span>*</span>工作类型
                        </label>
                        <select name="tname" style="width: 800px;height:40px;border:0;border: 1px  solid #c8c8c8">
    <c:forEach items="${list}" var="t">
       <option value="${t.tname }">${t.tname}</option>
    </c:forEach></select>
                        </div>
                    </div>
                    <div class="layui-form-item" style="margin-top: 30px">
                        <div class="layui-input-block">
                           
                           
                        <input type="submit" value="确认添加"   lay-filter="formDemo" class="lafite-layui-btn2 lafite_margin_left_20px"/>
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