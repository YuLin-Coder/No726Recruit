<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
 <base href="<%=basePath%>">
<meta charset="UTF-8">
 <style type="text/css">
 .aa{
 font-family: 宋体;font-size: 20px
 }a{
 text-decoration: none
 }
 </style>
<title>Insert title here</title>
       
</head>
<body>
     <div style="width: 100%;height: 125px;background-color: #00b38a">
       <img src="images/logo5.png" style="float: left;" >
       <div style="width: 1050px;text-align: center;height: 125px;line-height: 125px">
           <span style="font-size: 45px;color:white">人才招聘系统首页</span>
       </div>
      </div>
      <hr>
          <table style="width: 100%;color:black;clear: left;">
             <tr>
                <td><a href="purchasers/index.jsp" class="aa">首页</a></td>
                <td><a href="updatePurchasers" target="pp" class="aa">我的信息</a></td>
                <td><a href="selectAllNotice2" target="pp" class="aa">查看通知</a></td>
                <td><a href="purchasers/addResumes.jsp" target="pp" class="aa">制作简历</a></td>
                <td><a href="selectResumesByPid" target="pp" class="aa">简历管理</a></td>
                <td><a href="selectOrdersByPid" target="pp" class="aa">面试管理</a></td>
                <td><a href="purchasers/register.jsp" target="pp" class="aa">用户注册</a></td>
                <td><a href="purchasers/register1.jsp"  target="pp" class="aa">企业注册</a></td>
                <td><a href="Login.jsp" class="aa">登录中心</a></td>
                <td><a href="exit"  target="pp" class="aa">退出</a></td>
             </tr>
          </table>
       <hr>
      <form action="selectWorksByWname" target="pp" method="post"  style="margin-left: 350px">
          <input type="text" name="wname" placeholder="输入工作名称"  style="width:450px;height:40px;border:0;border: 1px  solid #c8c8c8">
       
         <input type="submit" value="搜索"  style="width: 100px;height:40px;background-color: #66CDAA;color: white;border-color: #66CDAA;"/>
     </form>
  <div>
  <iframe  src="indexgetType" frameborder="0"  width="100%"  height="40" ></iframe>
</div>
     <div style="clear: left;width:100%;margin: 0 auto;border:1px solid #c3aa74 ;height:400px;margin-top: 5px">
     <iframe  src="selectAllWorks1"   name=pp  frameborder="0"  width="100%"  height="400px" ></iframe>
</div>
  </body>      
</html>