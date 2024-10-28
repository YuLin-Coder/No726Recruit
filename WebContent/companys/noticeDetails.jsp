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
   
	         
	                   <div style="width: 100%;height:40px;margin-top: 5px;text-align:center;background-color: white;line-height: 40px" >                     
	                            <b style="font-family:宋体;font-size: 45px">${notice.title}</b>
	                   </div>
	                    <div style="width: 100%;height:40px;margin-top: 5px;text-align:center;line-height: 40px" >                     
	                            <b style="font-family:宋体;font-size:18px">${notice.times1}</b>
	                   </div>
	                    <div style="width: 100%;margin-top: 5px;text-align:left;background-color: white;" >                     
	                            <b style="font-family:宋体;font-size: 20px">${notice.contents}</b>
	                   </div>
	                   
	                

</body>
</html>