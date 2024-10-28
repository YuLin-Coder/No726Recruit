<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
    
    a{
    
    text-decoration: none
    }
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <div style="width:100%;margin: 0 auto;;text-align:center;">
    <c:forEach items="${typeList}" var="t">
	          <a href="selectWorksByTname?tname=${t.tname}" target="pp"  style="color:black"  >${t.tname}</a>
	         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	    </c:forEach>
    </div>
</body>
</html>