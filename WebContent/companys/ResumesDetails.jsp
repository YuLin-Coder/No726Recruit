<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
     <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
 <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>

<base href="<%=basePath%>">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   
	      <table style="text-align: center;margin-left: 180px;font-size: 20px;font-family: 宋体">
	         <tr>
	            <td colspan="4"><img src="images/${Resumes.imgurl}"></td>
	         </tr>
	         <tr>
	            <td style="width: 100px">姓名</td>
	            <td>${Resumes.pname}</td>
	           
	            <td style="width: 100px">毕业时间：</td>
	            <td>${Resumes.rtimes}</td>
	         </tr>
	          <tr>
	            <td>年龄：</td>
	            <td>${Resumes.age}</td>
	           
	            <td>性别：</td>
	            <td>${Resumes.rsex}</td>
	         </tr>
	          <tr>
	            <td>电话：</td>
	            <td>${Resumes.rxl}</td>
	           
	            <td>专业：</td>
	            <td>${Resumes.rzunanye}</td>
	         </tr>
	         <tr>
	            <td>电话：</td>
	            <td>${Resumes.rphone}</td>
	           
	            
	         </tr>
	          <tr>
	            <td>介绍：</td>
	            <td colspan="3">${Resumes.rintroduce}</td>
	           
	         </tr>
	      </table>             
	                   
	                

</body>
</html>