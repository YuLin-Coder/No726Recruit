<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
     <c:forEach items="${Works}" var="w">
	         
	                   <div style="float:left;width: 240px;height:304px;margin-left:20px;margin-top: 5px;text-align:center; border:1px solid #CCCCCC;

overflow: hidden;
text-overflow: ellipsis;
white-space: nowrap;
	                   " >
	                   
	                     
	                       <b style="font-family:宋体;color: black">${w.wname}</b><br><br>
	                      <b style="font-family:宋体;color: black">工资范围${w.moneys}</b><br><br>
	                      <b style="font-family:宋体;color: black">学历要求：${w.worksxl}</b><br><br>
	                      <b style="font-family:宋体;color: black">工龄要求：${w.worksjy}</b><br><br>
	                      <b style="font-family:宋体;color: black">工作地址：${w.worksaddress}</b><br><br>
	                      <b style="font-family:宋体;color: black">有效日期：${w.times1}</b><br><br>
 <a href="selectWorksByID1?wid=${w.wid}"  style="display:block;width:100%;height:50px;background-color:#66CDAA;color:white;text-decoration: none;text-align: center;line-height: 50px">
查看
 </a>
	                      
	                   </div>
	                
	            
	    </c:forEach>
</body>
</html>