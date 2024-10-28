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
                                       <th>工作ID</th>
								       <th>工作名称</th>	
								       <th>工作价钱</th>	
								       <th>工作学历</th>	
								       <th>工作经验</th>  
								       <th>工作地址</th>  
								       <th>有效日期</th>    
								      
								       <th>操作</th>
                                    </tr>
                                </thead>
                                <tbody>
                                 <c:forEach items="${Works}" var="w">
	         <tr>
	             <td>${w.cid }</td>
	             <td>${w.wname }</td>  
	             <td>${w.moneys }</td>  
	             <td>${w.worksxl }</td>  
	            <td>${w.worksjy }</td>  
	            <td>${w.worksaddress }</td>  
	            <td>${w.times1 }</td>                
	            <td>
	                <a href="deleteWorksByID?wid=${w.wid}"  style="color:red"
	                 onclick="return confirm('确定要删除吗！')">删除</a>
	                 /
	                 <a href="selectWorksByID?wid=${w.wid}"  onclick="return confirm('确定要编辑吗！')" style="color:red"
	                >编辑</a>
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
        <table>
        <tr>
				<td colspan="6" align="right">
					&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;共${totalCount}条记录&nbsp;&nbsp;共${totalPage}页&nbsp;&nbsp;
					第${pageCur}页&nbsp;&nbsp;
					<c:url var="url_pre" value="selectAllWorks">
						<c:param name="pageCur" value="${pageCur - 1 }"/>
						<c:param name="act" value="deleteSelect"/>
					</c:url>
					<c:url var="url_next" value="selectAllWorks">
						<c:param name="pageCur" value="${pageCur + 1 }"/>
						<c:param name="act" value="deleteSelect"/>
					</c:url>
					<!-- 第一页没有上一页 -->
					<c:if test="${pageCur != 1 }">
						<a href="${url_pre}">上一页</a>&nbsp;&nbsp;&nbsp;&nbsp;
					</c:if>
					<!-- 最后一页，没有下一页 -->
					<c:if test="${pageCur != totalPage && totalPage != 0}">
						<a href="${url_next}">下一页</a>
					</c:if>
				</td>
			</tr> 
        </table>
</body>
</html>
