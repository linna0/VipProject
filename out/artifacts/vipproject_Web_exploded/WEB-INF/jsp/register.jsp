<%--
  Created by IntelliJ IDEA.
  User: yln
  Date: 2022/4/10
  Time: 21:10
  To change this template use File | Settings | File Templates.
--%>
<%--
  Created by IntelliJ IDEA.
  User: yln
  Date: 2022/4/10
  Time: 20:23
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fm" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>注册</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/index.css"/>
    <link rel="stylesheet" href="<c:url value='https://cdn.staticfile.org/font-awesome/4.7.0/css/font-awesome.css'/>"/>
    <script src="${pageContext.request.contextPath}/static/js/register.js"></script>
</head>
<body style="background:#BBE5FB">
<h2 style="text-align: center;font-size:40px;padding-top:40px;color:#677EFF;font-family:'KaiTi'">你好，新管理员，欢迎注册</h2>
<section >
    <div class="container" style="height:690px;">
    <div class="user registerBx">
        <div class="formBx" >
    <form name="form1"  action="${pageContext.request.contextPath}/admin/register" method="post" enctype="multipart/form-data">
        <label for="adminId"> 管理员账号：</label><span id="adminIdError" style="color:red;font-size:2px"></span>
        <input type="text" name="adminId" id="adminId" placeholder="请输入正确的账号">

        <label for="adminName"> 管理员名字：</label><span id="adminNameError" style="color:red;font-size:2px"></span>
        <input type="text" name="adminName" id="adminName" placeholder="请输入正确的名字">

        <label for="adminPassword"> 密码：</label><span id="adminPasswordError" style="color:red;font-size:2px"></span>
        <input type="password" name="adminPassword" id="adminPassword" placeholder="密码长度6-18">

        <label for="adminEmail"> 邮箱：</label> <span id="adminEmailError" style="color:red;font-size:2px"></span>
        <input type="text" name="adminEmail" id="adminEmail" placeholder="请输入正确的邮箱">

        <label for="adminNumber">手机号码：</label><span id="adminNumberError" style="color:red;font-size:2px"></span>
        <input type="text" name="adminNumber" id="adminNumber" placeholder="请输入正确的手机号码">

        <label for="adminRole">角色：</label>
        <select name="adminRole" id="adminRole" name="adminRole">
        <option value="普通管理员" selected="selected">普通管理员</option>
        <option value="中级管理员">中级管理员</option>
        <option value="高级管理员">高级管理员</option>
        </select><br><br>
            <label for="adminPhotoPath">证件照</label>
            <input type="file" name="adminPhotoPath1" id="adminPhotoPath" >
        <font color="red"></font>
        <%--        这里的name的大小写要识别清楚哦，因为是间接对应了Mapper里面的数的--%>
        <input type="submit" value="注册" id="submitBtn">
        <p class="signup">已有账号？<a href="${pageContext.request.contextPath}/admin/login1">登录</a></p>
    </form>
    </div>
        <div class="imgBx"><img src="${pageContext.request.contextPath }/static/img/2.jpg" alt=""></div>
    </div>

    </div>
</section>
</body>
</html>

