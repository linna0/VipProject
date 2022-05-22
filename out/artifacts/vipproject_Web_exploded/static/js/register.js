
window.onload = function(){
    var idErrorSpan=document.getElementById("adminIdError");
    var idElt=document.getElementById("adminId");
    var adminNameErrorSpan=document.getElementById("adminNameError");
    var adminNameElt=document.getElementById("adminName");
    var pwdErrorSpan=document.getElementById("adminPasswordError");
    var pwdElt=document.getElementById("adminPassword");
    var EmailErrorSpan=document.getElementById("adminEmailError");
    var EmailElt=document.getElementById("adminEmail");
    var adminNumberErrorSpan=document.getElementById("adminNumberError");
    var adminNumberElt=document.getElementById("adminNumber");
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
        if(idErrorSpan.innerText!==""){
            idElt.value="";
        }
        idErrorSpan.innerText="";
    }
    adminNameElt.onblur=function (){
        var adminName=adminNameElt.value;
        adminName=adminName.trim();
        if(adminName===""){
            adminNameErrorSpan.innerHTML="用户名不能为空";
        }
        else{
            if(adminName.length>20){
                adminNameErrorSpan.innerText="用户名过长";
            }
            else if(adminName.length<2){
                adminNameErrorSpan.innerText="用户名过短";
            }
        }
    }
    adminNameElt.onfocus=function (){
        if(adminNameErrorSpan.innerText!==""){
            adminNameElt.value="";
        }
        adminNameErrorSpan.innerText="";
    }
    EmailElt.onblur=function (){
        var email=EmailElt.value;
        var target=/^([a-zA-Z]|[0-9])(\w|\-)+@[a-zA-Z0-9]+\.([a-zA-Z]{2,4})$/
        email=email.trim();
        if(email===""){
            EmailErrorSpan.innerHTML="邮箱不能为空";
        }
        else{
            if(!target.test(email)){
                EmailErrorSpan.innerText="邮箱不合规范";
            }
            else{
            }
        }
    }
    EmailElt.onfocus=function (){
        if(EmailErrorSpan.innerText!==""){
            EmailElt.value="";
        }
        EmailErrorSpan.innerText="";
    }
    adminNumberElt.onblur=function (){
        var n=adminNumberElt.value;
        n=n.trim();
        if(n===""){
            adminNumberErrorSpan.innerText="号码不能为空";
        }
        else{
            if(n.length!==11){
                adminNumberErrorSpan.innerText="号码格式错误";
            }
            else{
            }
        }
    }
    adminNumberElt.onfocus=function (){
        if (adminNumberErrorSpan.innerText!==""){
            adminNumberElt.value="";}
        adminNumberErrorSpan.innerText="";``
    }
    pwdElt.onblur=function (){
        var pwd=pwdElt.value;
        pwd=pwd.trim();
        if(pwd===""){
            pwdErrorSpan.innerText="密码不能为空";
        }
        else{
            if(pwd.length>18||pwd.length<6){
                pwdErrorSpan.innerText="密码长度错误";
            }
        }
    }
    pwdElt.onfocus=function (){
        if (pwdErrorSpan.innerText!==""){
            pwdElt.value="";}
        pwdErrorSpan.innerText="";``
    }
    var submitBtnElt=document.getElementById("submitBtn");
    submitBtn.onclick=function (){
        idElt.focus();
        idElt.blur();
        adminNameElt.focus();
        adminNameElt.blur()
        EmailElt.focus();
        EmailElt.blur();
        adminNumberElt.focus();
        adminNumberElt.blur();
        pwdElt.focus();
        pwdElt.blur();
        if(idErrorSpan.innerText===""&&pwdErrorSpan.innerText===""&&adminNameErrorSpan.innerText===""&&adminNumberErrorSpan.innerText===""&&EmailErrorSpan.innerText===""){
            var  adminFormElt=document.getElementById("actionForm");
            adminFormElt.action="${pageContext.request.contextPath }/admin/login";
            // alert("登陆成功，欢迎进入会员管理系统");
            adminFormElt.submit();
        }
    }
}