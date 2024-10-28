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
     <c:forEach items="${notice}" var="n">
	         
	                   <div style="width: 100%;height:40px;margin-top: 5px;text-align:center;background-color: white;line-height: 40px" >
	                     
	                       <a href="selectNoticeByID?nid=${n.nid}"  style="font-family: 黑体;text-decoration: none;text-align: center;color:#000000">
	                            <b style="font-family:宋体">${n.title}</b>
	                        </a>
	                       </div>
	                
	                
	            
	    </c:forEach>
	                   
	                
</body>
</html>