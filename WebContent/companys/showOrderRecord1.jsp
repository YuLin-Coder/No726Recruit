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
                                
                                        <th>工作名称</th>
								       <th>工资信息</th>	
								       <th>面试人</th>	
								       <th>年龄</th>	
								       <th>学历</th>	
								       <th>操作</th>
                                    </tr>
                                </thead>
                                <tbody>
                                 <c:forEach items="${orderRecord}" var="w">
	         <tr>
	         
	            <td>${w.wname }</td>
	             <td>${w.moneys }</td>  
              <td>${w.pname }</td>  
	               <td>${w.age }</td>  
	                <td>${w.rxl }</td>  
	             
                
	            <td>
	                <a href="updateOrderRecordByOoid1?ooid=${w.ooid}"  style="color:red"
	                 onclick="return confirm('确定要通过面试吗！')">通过面试</a>
	                   /
	                 <a href="selectResumesByRid?rid=${w.rid1}"  style="color:red"
	               >查看简历</a>
	                 
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
