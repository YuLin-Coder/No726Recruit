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
                                       <th>用户ID</th>
								       <th>用户账号</th>	
								       <th>用户密码</th>	
								       <th>用户姓名</th>	
								       <th>用户电话</th>  
								       <th>审核状态</th>          
								       <th>操作</th>
                                    </tr>
                                </thead>
                                <tbody>
                                 <c:forEach items="${Purchasers}" var="p">
	         <tr>
	            <td>${p.pid }</td>
	            <td>${p.loginaccount }</td>  
	            <td>******</td>  
	            <td>${p.truename }</td>  
	            <td>${p.telephone }</td>  
	            <td>${p.ptypes }</td>                
	            <td>
	                <a href="deletePurchasersByID?pid=${p.pid}"  style="color:red"
	                 onclick="return confirm('确定要删除吗！')">删除</a>
	                 /
	                 <a href="updatePurchasersByID1?pid=${p.pid}"  onclick="return confirm('确定要审核该用户吗！')" style="color:red"
	                >审核</a>
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
