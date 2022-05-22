<%--
  Created by IntelliJ IDEA.
  User: yln
  Date: 2022/4/10
  Time: 20:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>系统登录 - 会员管理系统</title>
<%--    <link rel="stylesheet" type="text/css" href="<c:url value='../../static/css/index.css'></c:url>" />--%>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/static/css/index.css">

    <link rel="stylesheet" href="<c:url value='https://cdn.staticfile.org/font-awesome/4.7.0/css/font-awesome.css'/>"/>
    <script type="text/javascript">
        window.onload = function(){
            var idErrorSpan=document.getElementById("adminIdError");
            var idElt=document.getElementById("adminId");
            var pwdErrorSpan=document.getElementById("adminPasswordError");
            var pwdElt=document.getElementById("adminPassword");
            idElt.onblur=function (){
                var id=idElt.value;
                id=id.trim();
                if(id==""){
                    idErrorSpan.innerHTML="账号不能为空";
                }
                else{
                    if(isNaN(id)){
                        idErrorSpan.innerText="账号只能由数字组成";
                    }
                    else{}
                }
            }
            idElt.onfocus=function (){
                if(idErrorSpan.innerText!=""){
                    idElt.value="";
                }
                idErrorSpan.innerText="";
            }
            pwdElt.onblur=function (){
                var pwd=pwdElt.value;
                pwd=pwd.trim();
                if(pwd==""){
                    pwdErrorSpan.innerText="密码不能为空";
                }
                else{}
            }
            pwdElt.onfocus=function (){
                if (pwdErrorSpan.innerText!=""){
                pwdElt.value="";}
                pwdErrorSpan.innerText="";``
            }
            var submitBtnElt=document.getElementById("submitBtn");
            submitBtn.onclick=function (){
                idElt.focus();
                idElt.blur();
                pwdElt.focus();
                pwdElt.blur();
                if(idErrorSpan.innerText==""&&pwdErrorSpan.innerText==""){
                    var  adminFormElt=document.getElementById("actionForm");

                    adminFormElt.action="${pageContext.request.contextPath }/admin/login";
                    // alert("登陆成功，欢迎进入会员管理系统");
                    adminFormElt.submit();
                }
            }
        }
    </script>
</head>
<body style="background:#BBE5FB">
<h2 style="text-align: center;font-size:40px;padding-top:40px;color:#677EFF;font-family:'KaiTi'">你好，管理员。欢迎来到会员管理系统</h2>
    <section>

        <div class="container">

        <div class="user singinBx">
            <div class="imgBx"><img src="${pageContext.request.contextPath }/static/img/1.jpg" alt=""></div>
            <div class="formBx">
        <form  action="${pageContext.request.contextPath }/admin/login"  name="actionForm" id="actionForm"  method="post">
            <div class="inputText">
                <label for="adminId" style="color:#b465da">账号：</label>
                <input type="text" id="adminId" name="adminId"  placeholder="请输入管理员账号"/>
                <p id="adminIdError" style="color:red;font-size:2px"></p>
            </div>
            <div class="inputText">
                <label for="adminPassword" style="color:#b465da">密码：</label>
                <input type="password" id="adminPassword" name="adminPassword"  placeholder="请输入密码" />
                <p id="adminPasswordError" style="color:red;font-size:2px"></p>
            </div>
            <div class="info" style="color:red;" >${error}</div>
            <div class="subBtn">
                <input type="submit" class="inputButton" value="登录" id="submitBtn"/>
<%--                <input src="${pageContext.request.contextPath }/admin/register.html" type="button" value="注册" />--%>

                <p class="signup">没有账号？<a href="${pageContext.request.contextPath }/admin/register.html">注册</a></p>
            </div>
        </form>
            </div>
        </div>
        </div>
    </section>
</body>
</html>

