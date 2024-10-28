<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html>
<head>
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
                    <div class="layui-card">
                       
                        <div class="layui-card-body">
                            <table class="layui-table layui-form" style="width: 100%;text-align: center;">
                                <thead>
                                    <tr style="background: #F8E5E5;">
                                     <th>图片</th>
                                       <th>年龄</th>
								       <th>性别</th>	
								       <th>毕业时间</th>	
								       <th>学历</th>	
								       <th>专业</th>  
								       <th>电话</th>  
  
								      
								       <th>操作</th>
                                    </tr>
                                </thead>
                                <tbody>
                                 <c:forEach items="${Resumes}" var="w">
	         <tr>
	           <td><img src='images/${w.imgurl }' style="width: 100px;height: 100px"></td> 
	             <td>${w.age }</td>
	             <td>${w.rsex }</td>  
	             <td>${w.rtimes }</td>  
	             <td>${w.rxl }</td>  
	            <td>${w.rzunanye }</td>  
	            <td>${w.rphone }</td>  
                
	            <td>
	                <a href="deleteResumesByID?rid=${w.rid}"  style="color:red"
	                 onclick="return confirm('确定要删除吗！')">删除</a>
	                 
	            </td>
	         </tr>
	    </c:forEach>
                                 
                                </tbody>
                            </table>
                        </div>
                        <div id="lafite_pages"></div>
                    </div>
                </div>
            </div>
        </div>
</body>
</html>
