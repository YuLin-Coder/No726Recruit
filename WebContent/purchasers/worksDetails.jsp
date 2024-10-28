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

	         
	                   <div style="width: 1000px;margin-left:20px;margin-top: 5px;text-align:center; border:1px solid #CCCCCC;margin-left: 180px" >
	                   
	                     
	                      <b style="font-family:宋体;color: black">${Works.wname}</b><br><br>
	                      <b style="font-family:宋体;color: black">工资范围${Works.moneys}</b><br><br>
	                      <b style="font-family:宋体;color: black">学历要求：${Works.worksxl}</b><br><br>
	                      <b style="font-family:宋体;color: black">工龄要求：${Works.worksjy}</b><br><br>
	                      <b style="font-family:宋体;color: black">工作地址：${Works.worksaddress}</b><br><br>
	                      <b style="font-family:宋体;color: black">有效日期：${Works.times1}</b><br><br>
	                      <b style="font-family:宋体;color: black">公司名称：${Works.cname}</b><br><br>
                           <b style="font-family:宋体;color: black">工作介绍：${Works.introduce}</b><br><br>
	                   </div>
	                
	            
 <div>
   
 </div>
 <form action="addOrders"  method="post"  style="width:700px;margin-top:0px;margin-left:180px">
       <select style="width:400px;height: 35px;" name="rid">
    <c:forEach items="${Resumes}" var="Resumes">
       <option value="${Resumes.rid}">${Resumes.rname}</option>
    </c:forEach></select>
       <input type="hidden" name="wid"  value="${Works.wid}">
       <input type="hidden" name="wid1"  value="${Works.wid}">
       <input type="submit" value="投递简历"    style="width: 150px;height:50px;"/>

</form>
</body>
</html>