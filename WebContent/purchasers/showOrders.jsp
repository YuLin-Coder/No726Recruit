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
                                
                                       <th>公司名称</th>
								       <th>工资信息</th>	
								       <th>是否审核</th>	
								       <th>是否面试</th>	
  
								      
								       <th>操作</th>
                                    </tr>
                                </thead>
                                <tbody>
                                 <c:forEach items="${orders}" var="w">
	         <tr>
	         
	             <td>${w.wname }</td>
	             <td>${w.moneys }</td>  
	             <td>${w.orderstypes1 }</td>  
	             <td>${w.orderstypes2 }</td>  
	          
                
	            <td>
	                <a href="deleteOrdersByID?oid=${w.oid}"  style="color:red"
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
